#import "SWGAuthenticationApi.h"
#import "SWGQueryParamCollection.h"


@interface SWGAuthenticationApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGAuthenticationApi

NSString* kSWGAuthenticationApiErrorDomain = @"SWGAuthenticationApiErrorDomain";
NSInteger kSWGAuthenticationApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static SWGAuthenticationApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Second Step in Social Authentication flow with JWT Token
///  Here is the flow for how social authentication works with a JWT Token 1.**Client:** The client needs to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl`. (Url should be registered with our social apps. Facebook is fine with any redirect url with the same domain base url but Google needs exact redirect url.) 2.**Server:** The QM server will redirect user to that provider to get access. 3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error. 4.**Client:** The client needs to get that code and needs to send an Ajax request to server at `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}` 5.**Server:** The QM server will authorize that code from the social connection and will authenticate user and will retrieve user info. 6.**Server:** The QM server will try to find existing user by unique identity. If the user already exists then it will login. Otherwise, it will create new user and will then login. 7.**Server:** Once user is found/created, it will return a JWT token for that user in the response.
///  @param code Authorization code obtained from the provider. 
///
///  @param provider The current options are `google` and `facebook`. 
///
///  @returns void
///
-(NSNumber*) v2AuthSocialAuthorizeCodeGetWithCode: (NSString*) code
    provider: (NSString*) provider
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'code' is set
    if (code == nil) {
        NSParameterAssert(code);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"code"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'provider' is set
    if (provider == nil) {
        NSParameterAssert(provider);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"provider"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/auth/social/authorizeCode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (code != nil) {
        queryParams[@"code"] = code;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Native Social Authentication
/// If you are using native authentication via Facebook or Google SDKs then you should use the following flow. 1.**Client:** Using native authentication via your native mobile app, get an access token using the instructions provided by the Facebook SDK (https://developers.facebook.com/docs/facebook-login) or Google (https://developers.google.com/identity/protocols/OAuth2) 2.**Client:** Send an Ajax request with provider name and access token on `https://app.quantimo.do/api/v2/auth/social/authorizeToken?provider={provider}&accessToken={accessToken}&refreshToken={refreshToken}` (`refreshToken` is optional) 3.**Server:** Server will try to get user info and will find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login 4.**Server:** Once user is found/created, it will return a JWT token for that user in response 5.**Client:** After getting the JWT token to get a QM access token follow these steps and include your JWT token in them as a header (Authorization: Bearer **{yourJWThere}**) or as a url parameter (https://app.quantimo.do/api/v2/oauth/authorize?token={yourJWThere}).
///  @param accessToken User's OAuth2 access token obtained from Google or FB native SDK 
///
///  @param provider The current options are `google` and `facebook`. 
///
///  @param refreshToken Optional refresh token obtained from Google or FB native SDK (optional)
///
///  @returns void
///
-(NSNumber*) v2AuthSocialAuthorizeTokenGetWithAccessToken: (NSString*) accessToken
    provider: (NSString*) provider
    refreshToken: (NSString*) refreshToken
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'provider' is set
    if (provider == nil) {
        NSParameterAssert(provider);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"provider"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/auth/social/authorizeToken"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (refreshToken != nil) {
        queryParams[@"refreshToken"] = refreshToken;
    }
    if (accessToken != nil) {
        queryParams[@"accessToken"] = accessToken;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// First Setp in Social Authentication flow with JWT Token
///  Here is the flow for how social authentication works with a JWT Token 1.**Client:** The client needs to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl`. (Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url.) 2.**Server:** The QM server will redirect user to that provider to get access. 3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error. 4.**Client:** The client needs to get that code and needs to send an Ajax request to server at `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}` 5.**Server:** The QM server will authorize that code from the social connection and will authenticate user and will retrieve user info. 6.**Server:** The QM server will try to find existing user by unique identity. If the user already exists then it will login. Otherwise, it will create new user and will then login. 7.**Server:** Once user is found/created, it will return a JWT token for that user in the response.
///  @param redirectUrl The redirect URI is the URL within your client application that will receive the OAuth2 credentials. Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url. 
///
///  @param provider The current options are `google` and `facebook`. 
///
///  @returns void
///
-(NSNumber*) v2AuthSocialLoginGetWithRedirectUrl: (NSString*) redirectUrl
    provider: (NSString*) provider
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'redirectUrl' is set
    if (redirectUrl == nil) {
        NSParameterAssert(redirectUrl);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"redirectUrl"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'provider' is set
    if (provider == nil) {
        NSParameterAssert(provider);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"provider"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/auth/social/login"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (redirectUrl != nil) {
        queryParams[@"redirectUrl"] = redirectUrl;
    }
    if (provider != nil) {
        queryParams[@"provider"] = provider;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Get a user access token
/// Client provides authorization token obtained from /api/v1/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo. ### Request Access Token After user approves your access to the given scope form the https:/app.quantimo.do/v2/oauth2/authorize endpoint, you'll receive an authorization code to request an access token. This time make a `POST` request to `/api/v2/oauth/access_token` with parameters including: * `grant_type` Can be `authorization_code` or `refresh_token` since we are getting the `access_token` for the first time we don't have a `refresh_token` so this must be `authorization_code`. * `code` Authorization code you received with the previous request. * `redirect_uri` Your application's redirect url. ### Refreshing Access Token Access tokens expire at some point, to continue using our api you need to refresh them with `refresh_token` you received along with the `access_token`. To do this make a `POST` request to `/api/v2/oauth/access_token` with correct parameters, which are: * `grant_type` This time grant type must be `refresh_token` since we have it. * `clientId` Your application's client id. * `client_secret` Your application's client secret. * `refresh_token` The refresh token you received with the `access_token`. Every request you make to this endpoint will give you a new refresh token and make the old one expired. So you can keep getting new access tokens with new refresh tokens. ### Using Access Token Currently we support 2 ways for this, you can't use both at the same time. * Adding access token to the request header as `Authorization: Bearer {access_token}` * Adding to the url as a query parameter `?access_token={access_token}` You can read more about OAuth2 from [here](http://oauth.net/2/)
///  @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do. 
///
///  @param clientSecret This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId. 
///
///  @param grantType Grant Type can be 'authorization_code' or 'refresh_token' 
///
///  @param code Authorization code you received with the previous request. 
///
///  @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment. (optional)
///
///  @param scope Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space. (optional)
///
///  @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials. (optional)
///
///  @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI (optional)
///
///  @returns void
///
-(NSNumber*) v2Oauth2AccessTokenGetWithClientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
    grantType: (NSString*) grantType
    code: (NSString*) code
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
    state: (NSString*) state
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        NSParameterAssert(clientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientId"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'clientSecret' is set
    if (clientSecret == nil) {
        NSParameterAssert(clientSecret);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientSecret"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'grantType' is set
    if (grantType == nil) {
        NSParameterAssert(grantType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"grantType"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'code' is set
    if (code == nil) {
        NSParameterAssert(code);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"code"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/oauth2/access_token"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (clientId != nil) {
        queryParams[@"clientId"] = clientId;
    }
    if (clientSecret != nil) {
        queryParams[@"client_secret"] = clientSecret;
    }
    if (grantType != nil) {
        queryParams[@"grant_type"] = grantType;
    }
    if (code != nil) {
        queryParams[@"code"] = code;
    }
    if (responseType != nil) {
        queryParams[@"response_type"] = responseType;
    }
    if (scope != nil) {
        queryParams[@"scope"] = scope;
    }
    if (redirectUri != nil) {
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Request Authorization Code
/// You can implement OAuth2 authentication to your application using our **OAuth2** endpoints.  You need to redirect users to `/api/v2/oauth/authorize` endpoint to get an authorization code and include the parameters below.   This page will ask the user if they want to allow a client's application to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error. See the /api/v2/oauth/access_token endpoint for the next steps.
///  @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps). 
///
///  @param clientSecret This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId.  Obtain this by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps). 
///
///  @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment. 
///
///  @param scope Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space. 
///
///  @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials. (optional)
///
///  @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI (optional)
///
///  @returns void
///
-(NSNumber*) v2OauthAuthorizeGetWithClientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
    state: (NSString*) state
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        NSParameterAssert(clientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientId"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'clientSecret' is set
    if (clientSecret == nil) {
        NSParameterAssert(clientSecret);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clientSecret"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'responseType' is set
    if (responseType == nil) {
        NSParameterAssert(responseType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"responseType"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'scope' is set
    if (scope == nil) {
        NSParameterAssert(scope);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"scope"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthenticationApiErrorDomain code:kSWGAuthenticationApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/oauth/authorize"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (clientId != nil) {
        queryParams[@"clientId"] = clientId;
    }
    if (clientSecret != nil) {
        queryParams[@"client_secret"] = clientSecret;
    }
    if (responseType != nil) {
        queryParams[@"response_type"] = responseType;
    }
    if (scope != nil) {
        queryParams[@"scope"] = scope;
    }
    if (redirectUri != nil) {
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if (state != nil) {
        queryParams[@"state"] = state;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}



@end
