#import "SWGOauthApi.h"
#import "SWGQueryParamCollection.h"


@interface SWGOauthApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGOauthApi

static SWGOauthApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGOauthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOauthApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGOauthApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOauthApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Authorize
/// Ask the user if they want to allow a client's application to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error.
///  @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
///
///  @param clientSecret This is the secret for your obtained client_id. QuantiModo uses this to validate that only your application uses the client_id.
///
///  @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
///
///  @param scope Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space.
///
///  @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
///
///  @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
///
///  @returns void
///
-(NSNumber*) v1Oauth2AuthorizeGetWithCompletionBlock: (NSString*) clientId
         clientSecret: (NSString*) clientSecret
         responseType: (NSString*) responseType
         scope: (NSString*) scope
         redirectUri: (NSString*) redirectUri
         state: (NSString*) state
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `clientId` when calling `v1Oauth2AuthorizeGet`"];
    }
    
    // verify the required parameter 'clientSecret' is set
    if (clientSecret == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `clientSecret` when calling `v1Oauth2AuthorizeGet`"];
    }
    
    // verify the required parameter 'responseType' is set
    if (responseType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `responseType` when calling `v1Oauth2AuthorizeGet`"];
    }
    
    // verify the required parameter 'scope' is set
    if (scope == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `scope` when calling `v1Oauth2AuthorizeGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/oauth2/authorize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(clientSecret != nil) {
        
        queryParams[@"client_secret"] = clientSecret;
    }
    if(responseType != nil) {
        
        queryParams[@"response_type"] = responseType;
    }
    if(scope != nil) {
        
        queryParams[@"scope"] = scope;
    }
    if(redirectUri != nil) {
        
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if(state != nil) {
        
        queryParams[@"state"] = state;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Access Token
/// Client provides authorization token obtained from /api/v1/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo.
///  @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
///
///  @param clientSecret This is the secret for your obtained client_id. QuantiModo uses this to validate that only your application uses the client_id.
///
///  @param grantType Grant Type can be 'authorization_code' or 'refresh_token'
///
///  @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
///
///  @param scope Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space.
///
///  @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
///
///  @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
///
///  @returns void
///
-(NSNumber*) v1Oauth2TokenGetWithCompletionBlock: (NSString*) clientId
         clientSecret: (NSString*) clientSecret
         grantType: (NSString*) grantType
         responseType: (NSString*) responseType
         scope: (NSString*) scope
         redirectUri: (NSString*) redirectUri
         state: (NSString*) state
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'clientId' is set
    if (clientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `clientId` when calling `v1Oauth2TokenGet`"];
    }
    
    // verify the required parameter 'clientSecret' is set
    if (clientSecret == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `clientSecret` when calling `v1Oauth2TokenGet`"];
    }
    
    // verify the required parameter 'grantType' is set
    if (grantType == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `grantType` when calling `v1Oauth2TokenGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/oauth2/token"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(clientSecret != nil) {
        
        queryParams[@"client_secret"] = clientSecret;
    }
    if(grantType != nil) {
        
        queryParams[@"grant_type"] = grantType;
    }
    if(responseType != nil) {
        
        queryParams[@"response_type"] = responseType;
    }
    if(scope != nil) {
        
        queryParams[@"scope"] = scope;
    }
    if(redirectUri != nil) {
        
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if(state != nil) {
        
        queryParams[@"state"] = state;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}



@end
