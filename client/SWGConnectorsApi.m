#import "SWGConnectorsApi.h"
#import "SWGFile.h"
#import "SWGQueryParamCollection.h"
#import "SWGConnector.h"


@interface SWGConnectorsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGConnectorsApi

static NSString * basePath = @"https://localhost/api";

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        self.apiClient = [SWGApiClient sharedClientFromPool:basePath];
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        if (apiClient) {
            self.apiClient = apiClient;
        }
        else {
            self.apiClient = [SWGApiClient sharedClientFromPool:basePath];
        }
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGConnectorsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGConnectorsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGConnectorsApi alloc] init];
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


/*!
 * List of Connectors
 * Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.
 * \returns NSArray<SWGConnector>*
 */
-(NSNumber*) connectorsListGetWithCompletionBlock: 
        (void (^)(NSArray<SWGConnector>* output, NSError* error))completionBlock
         {

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    
    // response is in a container
        // array container response type
    return [self.apiClient dictionary: requestUrl 
                       method: @"GET" 
                  queryParams: queryParams 
                         body: bodyDictionary 
                 headerParams: headerParams
                 authSettings: authSettings
           requestContentType: requestContentType
          responseContentType: responseContentType
              completionBlock: ^(NSDictionary *data, NSError *error) {
                if (error) {
                    completionBlock(nil, error);
                    return;
                }
                
                if([data isKindOfClass:[NSArray class]]){
                    NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                    for (NSDictionary* dict in (NSArray*)data) {
                        
                        
                        SWGConnector* d = [[SWGConnector alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGConnector>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Obtain a token from 3rd party data source
 * Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
 * \param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 * \returns void
 */
-(NSNumber*) connectorsConnectorConnectGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorConnectGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/connect", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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
 * Get connection parameters
 * Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
 * \param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 * \param url URL which should be used to enable the connector
 * \param parameters Array of Parameters for the request to enable connector
 * \param usePopup Should use popup when enabling connector
 * \returns void
 */
-(NSNumber*) connectorsConnectorConnectInstructionsGetWithCompletionBlock: (NSString*) connector
         url: (NSString*) url
         parameters: (NSArray*) parameters
         usePopup: (BOOL) usePopup
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorConnectInstructionsGet");
    
    // verify the required parameter 'url' is set
    NSAssert(url != nil, @"Missing the required parameter `url` when calling connectorsConnectorConnectInstructionsGet");
    
    // verify the required parameter 'parameters' is set
    NSAssert(parameters != nil, @"Missing the required parameter `parameters` when calling connectorsConnectorConnectInstructionsGet");
    
    // verify the required parameter 'usePopup' is set
    NSAssert(usePopup != nil, @"Missing the required parameter `usePopup` when calling connectorsConnectorConnectInstructionsGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/connectInstructions", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(url != nil) {
        
        queryParams[@"url"] = url;
    }
    if(parameters != nil) {
        
        queryParams[@"parameters"] = parameters;
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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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
 * Get connection parameters
 * Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
 * \param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 * \param displayName Name of the parameter that is user visible in the form
 * \param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request) TODO What's a connector key?
 * \param usePopup Should use popup when enabling connector
 * \param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
 * \param placeholder Placeholder hint value for the parameter input tag
 * \param defaultValue Default parameter value
 * \returns void
 */
-(NSNumber*) connectorsConnectorConnectParameterGetWithCompletionBlock: (NSString*) connector
         displayName: (NSString*) displayName
         key: (NSString*) key
         usePopup: (BOOL) usePopup
         type: (NSString*) type
         placeholder: (NSString*) placeholder
         defaultValue: (NSString*) defaultValue
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'displayName' is set
    NSAssert(displayName != nil, @"Missing the required parameter `displayName` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'key' is set
    NSAssert(key != nil, @"Missing the required parameter `key` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'usePopup' is set
    NSAssert(usePopup != nil, @"Missing the required parameter `usePopup` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'type' is set
    NSAssert(type != nil, @"Missing the required parameter `type` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'placeholder' is set
    NSAssert(placeholder != nil, @"Missing the required parameter `placeholder` when calling connectorsConnectorConnectParameterGet");
    
    // verify the required parameter 'defaultValue' is set
    NSAssert(defaultValue != nil, @"Missing the required parameter `defaultValue` when calling connectorsConnectorConnectParameterGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/connectParameter", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(displayName != nil) {
        
        queryParams[@"displayName"] = displayName;
    }
    if(key != nil) {
        
        queryParams[@"key"] = key;
    }
    if(usePopup != nil) {
        
        queryParams[@"usePopup"] = usePopup;
    }
    if(type != nil) {
        
        queryParams[@"type"] = type;
    }
    if(placeholder != nil) {
        
        queryParams[@"placeholder"] = placeholder;
    }
    if(defaultValue != nil) {
        
        queryParams[@"defaultValue"] = defaultValue;
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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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
 * Delete stored connection info
 * The disconnect method deletes any stored tokens or connection information from the connectors database.
 * \param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 * \returns void
 */
-(NSNumber*) connectorsConnectorDisconnectGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorDisconnectGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/disconnect", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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
 * Get connector info for user
 * Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
 * \param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 * \returns void
 */
-(NSNumber*) connectorsConnectorInfoGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorInfoGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/info", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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
 * Sync with data source
 * The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
 * \param connector Lowercase system name of the source application or device
 * \returns void
 */
-(NSNumber*) connectorsConnectorUpdateGetWithCompletionBlock: (NSString*) connector
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'connector' is set
    NSAssert(connector != nil, @"Missing the required parameter `connector` when calling connectorsConnectorUpdateGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/connectors/{connector}/update", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"connector", @"}"]] withString: [SWGApiClient escape:connector]];
    

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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"GET" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
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



