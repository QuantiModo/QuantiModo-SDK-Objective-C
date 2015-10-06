#import "SWGConnectorsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGConnector.h"
#import "SWGConnectorInstruction.h"
#import "SWGConnectorInfo.h"


@interface SWGConnectorsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGConnectorsApi

static SWGConnectorsApi* singletonAPI = nil;

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

+(SWGConnectorsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGConnectorsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGConnectorsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGConnectorsApi alloc] init];
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
/// Get embeddable connect javascript
/// Get embeddable connect javascript. Usage:\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Use `qmSetupInPopup` function after connecting `connect.js`.\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Requires a selector to block. It will be embedded in this block.\n\n    Use `qmSetupOnPage` function after connecting `connect.js`.\n\n  - Embedding in mobile applications without popups for 3rd-party\nauthentication.\n\n    Use `qmSetupOnMobile` function after connecting `connect.js`.\n\n    if using the MoodiModo Clones, Use `qmSetupOnIonic` function after connecting `connect.js`.
///  @param accessToken User's access token
///
///  @param mashapeKey Mashape API key
///
///  @returns void
///
-(NSNumber*) v1ConnectJsGetWithCompletionBlock: (NSString*) accessToken
         mashapeKey: (NSString*) mashapeKey
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accessToken` when calling `v1ConnectJsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connect.js"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(accessToken != nil) {
        
        queryParams[@"access token"] = accessToken;
    }
    if(mashapeKey != nil) {
        
        queryParams[@"mashape key"] = mashapeKey;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/x-javascript"]];
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
    NSArray *authSettings = @[];

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
/// Mobile connect page
/// Mobile connect page
///  @param t User token
///
///  @returns void
///
-(NSNumber*) v1ConnectMobileGetWithCompletionBlock: (NSString*) t
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 't' is set
    if (t == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `t` when calling `v1ConnectMobileGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connect/mobile"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(t != nil) {
        
        queryParams[@"t"] = t;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"text/html"]];
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
    NSArray *authSettings = @[];

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
/// List of Connectors
/// A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
///  @returns NSArray<SWGConnector>*
///
-(NSNumber*) v1ConnectorsListGetWithCompletionBlock: 
        (void (^)(NSArray<SWGConnector>* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/list"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
                                         responseType: @"NSArray<SWGConnector>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGConnector>*)data, error);
              }
          ];
}

///
/// Obtain a token from 3rd party data source
/// Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
///  @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorConnectGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorConnectGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/connect"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
/// Connection Instructions
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///  @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
///
///  @param parameters JSON Array of Parameters for the request to enable connector.
///
///  @param url URL which should be used to enable the connector.
///
///  @param usePopup Should use popup when enabling connector
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorConnectInstructionsGetWithCompletionBlock: (NSString*) connector
         parameters: (NSString*) parameters
         url: (NSString*) url
         usePopup: (NSNumber*) usePopup
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorConnectInstructionsGet`"];
    }
    
    // verify the required parameter 'parameters' is set
    if (parameters == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `parameters` when calling `v1ConnectorsConnectorConnectInstructionsGet`"];
    }
    
    // verify the required parameter 'url' is set
    if (url == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `url` when calling `v1ConnectorsConnectorConnectInstructionsGet`"];
    }
    
    // verify the required parameter 'usePopup' is set
    if (usePopup == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `usePopup` when calling `v1ConnectorsConnectorConnectInstructionsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/connectInstructions"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(parameters != nil) {
        
        queryParams[@"parameters"] = parameters;
    }
    if(url != nil) {
        
        queryParams[@"url"] = url;
    }
    if(usePopup != nil) {
        
        queryParams[@"usePopup"] = usePopup;
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
/// Connect Parameter
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///  @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
///
///  @param displayName Name of the parameter that is user visible in the form
///
///  @param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request)
///
///  @param placeholder Placeholder hint value for the parameter input tag.
///
///  @param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
///
///  @param usePopup Should use popup when enabling connector
///
///  @param defaultValue Default parameter value
///
///  @returns SWGConnectorInstruction*
///
-(NSNumber*) v1ConnectorsConnectorConnectParameterGetWithCompletionBlock: (NSString*) connector
         displayName: (NSString*) displayName
         key: (NSString*) key
         placeholder: (NSString*) placeholder
         type: (NSString*) type
         usePopup: (NSNumber*) usePopup
         defaultValue: (NSString*) defaultValue
        
        completionHandler: (void (^)(SWGConnectorInstruction* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    
    // verify the required parameter 'displayName' is set
    if (displayName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `displayName` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    
    // verify the required parameter 'key' is set
    if (key == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `key` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    
    // verify the required parameter 'placeholder' is set
    if (placeholder == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `placeholder` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    
    // verify the required parameter 'type' is set
    if (type == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `type` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    
    // verify the required parameter 'usePopup' is set
    if (usePopup == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `usePopup` when calling `v1ConnectorsConnectorConnectParameterGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/connectParameter"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(defaultValue != nil) {
        
        queryParams[@"defaultValue"] = defaultValue;
    }
    if(displayName != nil) {
        
        queryParams[@"displayName"] = displayName;
    }
    if(key != nil) {
        
        queryParams[@"key"] = key;
    }
    if(placeholder != nil) {
        
        queryParams[@"placeholder"] = placeholder;
    }
    if(type != nil) {
        
        queryParams[@"type"] = type;
    }
    if(usePopup != nil) {
        
        queryParams[@"usePopup"] = usePopup;
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
                                         responseType: @"SWGConnectorInstruction*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGConnectorInstruction*)data, error);
              }
          ];
}

///
/// Delete stored connection info
/// The disconnect method deletes any stored tokens or connection information from the connectors database.
///  @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorDisconnectGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorDisconnectGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/disconnect"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
/// Get connector info for user
/// Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
///  @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
///
///  @returns SWGConnectorInfo*
///
-(NSNumber*) v1ConnectorsConnectorInfoGetWithCompletionBlock: (NSString*) connector
        
        completionHandler: (void (^)(SWGConnectorInfo* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorInfoGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/info"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
                                         responseType: @"SWGConnectorInfo*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGConnectorInfo*)data, error);
              }
          ];
}

///
/// Sync with data source
/// The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
///  @param connector Lowercase system name of the source application or device
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorUpdateGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'connector' is set
    if (connector == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `connector` when calling `v1ConnectorsConnectorUpdateGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connector}/update"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connector != nil) {
        pathParams[@"connector"] = connector;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
