#import "SWGOauthApi.h"
#import "SWGFile.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"


@interface SWGOauthApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGOauthApi
static NSString * basePath = @"https://localhost/api";

+(SWGOauthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGOauthApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOauthApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(SWGApiClient*) apiClient {
    return [SWGApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(id) init {
    self = [super init];
    self.defaultHeaders = [NSMutableDictionary dictionary];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}


/*!
 * Access Token
 * Client provides authorization token obtained from /api/oauth2/authorize to this endpoint and receives an access token. Access token can then
 * \param responseType Response type
 * \param redirectUri Redirect uri
 * \param realm Realm
 * \param clientId Client id
 * \param scope Scope
 * \param state State
 * \returns void
 */
-(NSNumber*) oauth2AccesstokenGetWithCompletionBlock: (NSString*) responseType
         redirectUri: (NSString*) redirectUri
         realm: (NSString*) realm
         clientId: (NSString*) clientId
         scope: (NSString*) scope
         state: (NSString*) state
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'responseType' is set
    NSAssert(responseType != nil, @"Missing the required parameter `responseType` when calling oauth2AccesstokenGet");
    
    // verify the required parameter 'redirectUri' is set
    NSAssert(redirectUri != nil, @"Missing the required parameter `redirectUri` when calling oauth2AccesstokenGet");
    
    // verify the required parameter 'realm' is set
    NSAssert(realm != nil, @"Missing the required parameter `realm` when calling oauth2AccesstokenGet");
    
    // verify the required parameter 'clientId' is set
    NSAssert(clientId != nil, @"Missing the required parameter `clientId` when calling oauth2AccesstokenGet");
    
    // verify the required parameter 'scope' is set
    NSAssert(scope != nil, @"Missing the required parameter `scope` when calling oauth2AccesstokenGet");
    
    // verify the required parameter 'state' is set
    NSAssert(state != nil, @"Missing the required parameter `state` when calling oauth2AccesstokenGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/oauth2/accesstoken", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(responseType != nil) {
        
        queryParams[@"response_type"] = responseType;
    }
    if(redirectUri != nil) {
        
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if(realm != nil) {
        
        queryParams[@"realm"] = realm;
    }
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(scope != nil) {
        
        queryParams[@"scope"] = scope;
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

    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    

    
    // it's void
        return [client stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                if (error) {
                    completionBlock(error);
                    return;
                }
                completionBlock(nil);
                    }];

    
}

/*!
 * Authorize
 * Ask the user if they want to allow a client applications to submit or obtain data from their QM  account.
 * \param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
 * \param realm Name of the realm representing the users of your distributed applications and services. A \"realm\" attribute MAY be included to indicate the scope of protection.
 * \param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
 * \param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
 * \param scope Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space.
 * \param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
 * \returns void
 */
-(NSNumber*) oauth2AuthorizeGetWithCompletionBlock: (NSString*) clientId
         realm: (NSString*) realm
         redirectUri: (NSString*) redirectUri
         responseType: (NSString*) responseType
         scope: (NSString*) scope
         state: (NSString*) state
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'clientId' is set
    NSAssert(clientId != nil, @"Missing the required parameter `clientId` when calling oauth2AuthorizeGet");
    
    // verify the required parameter 'realm' is set
    NSAssert(realm != nil, @"Missing the required parameter `realm` when calling oauth2AuthorizeGet");
    
    // verify the required parameter 'redirectUri' is set
    NSAssert(redirectUri != nil, @"Missing the required parameter `redirectUri` when calling oauth2AuthorizeGet");
    
    // verify the required parameter 'responseType' is set
    NSAssert(responseType != nil, @"Missing the required parameter `responseType` when calling oauth2AuthorizeGet");
    
    // verify the required parameter 'scope' is set
    NSAssert(scope != nil, @"Missing the required parameter `scope` when calling oauth2AuthorizeGet");
    
    // verify the required parameter 'state' is set
    NSAssert(state != nil, @"Missing the required parameter `state` when calling oauth2AuthorizeGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/oauth2/authorize", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(realm != nil) {
        
        queryParams[@"realm"] = realm;
    }
    if(redirectUri != nil) {
        
        queryParams[@"redirect_uri"] = redirectUri;
    }
    if(responseType != nil) {
        
        queryParams[@"response_type"] = responseType;
    }
    if(scope != nil) {
        
        queryParams[@"scope"] = scope;
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

    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    

    

    
    // it's void
        return [client stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                if (error) {
                    completionBlock(error);
                    return;
                }
                completionBlock(nil);
                    }];

    
}



@end
