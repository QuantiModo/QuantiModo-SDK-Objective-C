#import "SWGConnectorsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGConnector.h"
#import "SWGConnectorInfo.h"
#import "SWGConnectorInstruction.h"


@interface SWGConnectorsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGConnectorsApi

NSString* kSWGConnectorsApiErrorDomain = @"SWGConnectorsApiErrorDomain";
NSInteger kSWGConnectorsApiMissingParamErrorCode = 234513;

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
    static SWGConnectorsApi *sharedAPI;
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
/// Mobile connect page
/// This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123
///  @param accessToken User OAuth access token 
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1ConnectMobileGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connect/mobile"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

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
/// Obtain a token from 3rd party data source
/// Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
///  @param connectorName Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorNameConnectGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/connect"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
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
/// Connection Instructions
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///  @param connectorName Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
///
///  @param parameters JSON Array of Parameters for the request to enable connector. 
///
///  @param url URL which should be used to enable the connector. 
///
///  @param usePopup Should use popup when enabling connector 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorNameConnectInstructionsGetWithConnectorName: (NSString*) connectorName
    parameters: (NSString*) parameters
    url: (NSString*) url
    usePopup: (NSNumber*) usePopup
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'parameters' is set
    if (parameters == nil) {
        NSParameterAssert(parameters);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"parameters"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'usePopup' is set
    if (usePopup == nil) {
        NSParameterAssert(usePopup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"usePopup"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/connectInstructions"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (parameters != nil) {
        queryParams[@"parameters"] = parameters;
    }
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (usePopup != nil) {
        queryParams[@"usePopup"] = usePopup;
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
/// Connect Parameter
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///  @param connectorName Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
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
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param defaultValue Default parameter value (optional)
///
///  @returns SWGConnectorInstruction*
///
-(NSNumber*) v1ConnectorsConnectorNameConnectParameterGetWithConnectorName: (NSString*) connectorName
    displayName: (NSString*) displayName
    key: (NSString*) key
    placeholder: (NSString*) placeholder
    type: (NSString*) type
    usePopup: (NSNumber*) usePopup
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    defaultValue: (NSString*) defaultValue
    completionHandler: (void (^)(SWGConnectorInstruction* output, NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'displayName' is set
    if (displayName == nil) {
        NSParameterAssert(displayName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"displayName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'placeholder' is set
    if (placeholder == nil) {
        NSParameterAssert(placeholder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"placeholder"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'type' is set
    if (type == nil) {
        NSParameterAssert(type);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"type"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'usePopup' is set
    if (usePopup == nil) {
        NSParameterAssert(usePopup);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"usePopup"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/connectParameter"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (defaultValue != nil) {
        queryParams[@"defaultValue"] = defaultValue;
    }
    if (displayName != nil) {
        queryParams[@"displayName"] = displayName;
    }
    if (key != nil) {
        queryParams[@"key"] = key;
    }
    if (placeholder != nil) {
        queryParams[@"placeholder"] = placeholder;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (usePopup != nil) {
        queryParams[@"usePopup"] = usePopup;
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
                              responseType: @"SWGConnectorInstruction*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGConnectorInstruction*)data, error);
                                }
                           }
          ];
}

///
/// Delete stored connection info
/// The disconnect method deletes any stored tokens or connection information from the connectors database.
///  @param connectorName Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorNameDisconnectGetWithConnectorName: (NSString*) connectorName
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/disconnect"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
/// Get connector info for user
/// Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
///  @param connectorName Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns SWGConnectorInfo*
///
-(NSNumber*) v1ConnectorsConnectorNameInfoGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(SWGConnectorInfo* output, NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/info"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
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
                              responseType: @"SWGConnectorInfo*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGConnectorInfo*)data, error);
                                }
                           }
          ];
}

///
/// Sync with data source
/// The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
///  @param connectorName Lowercase system name of the source application or device 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1ConnectorsConnectorNameUpdateGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'connectorName' is set
    if (connectorName == nil) {
        NSParameterAssert(connectorName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectorName"] };
            NSError* error = [NSError errorWithDomain:kSWGConnectorsApiErrorDomain code:kSWGConnectorsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/{connectorName}/update"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (connectorName != nil) {
        pathParams[@"connectorName"] = connectorName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
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
/// List of Connectors
/// A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
///  @returns NSArray<SWGConnector>*
///
-(NSNumber*) v1ConnectorsListGetWithCompletionHandler: 
    (void (^)(NSArray<SWGConnector>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/connectors/list"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"NSArray<SWGConnector>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGConnector>*)data, error);
                                }
                           }
          ];
}

///
/// Get embeddable connect javascript
/// Get embeddable connect javascript. Usage:   - Embedding in applications with popups for 3rd-party authentication windows.     Use `qmSetupInPopup` function after connecting `connect.js`.   - Embedding in applications with popups for 3rd-party authentication windows.     Requires a selector to block. It will be embedded in this block.     Use `qmSetupOnPage` function after connecting `connect.js`.   - Embedding in mobile applications without popups for 3rd-party authentication.     Use `qmSetupOnMobile` function after connecting `connect.js`.     If using in a Cordova application call  `qmSetupOnIonic` function after connecting `connect.js`.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @returns void
///
-(NSNumber*) v1IntegrationJsGetWithAccessToken: (NSString*) accessToken
    completionHandler: (void (^)(NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/integration.js"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/x-javascript"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

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
