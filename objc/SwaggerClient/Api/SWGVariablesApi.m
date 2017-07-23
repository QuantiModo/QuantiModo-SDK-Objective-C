#import "SWGVariablesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGUserVariableDelete.h"
#import "SWGUserVariables.h"
#import "SWGVariable.h"
#import "SWGVariableCategory.h"
#import "SWGVariablesNew.h"


@interface SWGVariablesApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGVariablesApi

NSString* kSWGVariablesApiErrorDomain = @"SWGVariablesApiErrorDomain";
NSInteger kSWGVariablesApiMissingParamErrorCode = 234513;

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
    static SWGVariablesApi *sharedAPI;
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
/// Get public variables
/// This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param _id Common variable id (optional)
///
///  @param category Filter data by category (optional)
///
///  @param name Original name of the variable (supports exact name match only) (optional)
///
///  @param updatedAt Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
///
///  @param source The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here (optional)
///
///  @param latestMeasurementTime Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
///
///  @param numberOfRawMeasurements Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. (optional)
///
///  @param lastSource Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns SWGVariable*
///
-(NSNumber*) v1PublicVariablesGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    category: (NSString*) category
    name: (NSString*) name
    updatedAt: (NSString*) updatedAt
    source: (NSString*) source
    latestMeasurementTime: (NSString*) latestMeasurementTime
    numberOfRawMeasurements: (NSString*) numberOfRawMeasurements
    lastSource: (NSString*) lastSource
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/public/variables"];

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
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (category != nil) {
        queryParams[@"category"] = category;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (updatedAt != nil) {
        queryParams[@"updatedAt"] = updatedAt;
    }
    if (source != nil) {
        queryParams[@"source"] = source;
    }
    if (latestMeasurementTime != nil) {
        queryParams[@"latestMeasurementTime"] = latestMeasurementTime;
    }
    if (numberOfRawMeasurements != nil) {
        queryParams[@"numberOfRawMeasurements"] = numberOfRawMeasurements;
    }
    if (lastSource != nil) {
        queryParams[@"lastSource"] = lastSource;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
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
                              responseType: @"SWGVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVariable*)data, error);
                                }
                           }
          ];
}

///
/// Get top 5 PUBLIC variables with the most correlations
/// Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.Supported filter parameters:<ul><li><b>category</b> - Category of Variable</li></ul>
///  @param search Search query can be some fraction of a variable name. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param variableCategoryName Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (optional)
///
///  @param source Specify a data source name to only return variables from a specific data source. (optional)
///
///  @param effectOrCause Indicate if you only want variables that have user correlations. Possible values are effect and cause. (optional)
///
///  @param publicEffectOrCause Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns SWGVariable*
///
-(NSNumber*) v1PublicVariablesSearchSearchGetWithSearch: (NSString*) search
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    source: (NSString*) source
    effectOrCause: (NSString*) effectOrCause
    publicEffectOrCause: (NSString*) publicEffectOrCause
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler {
    // verify the required parameter 'search' is set
    if (search == nil) {
        NSParameterAssert(search);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"search"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/public/variables/search/{search}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (variableCategoryName != nil) {
        queryParams[@"variableCategoryName"] = variableCategoryName;
    }
    if (source != nil) {
        queryParams[@"source"] = source;
    }
    if (effectOrCause != nil) {
        queryParams[@"effectOrCause"] = effectOrCause;
    }
    if (publicEffectOrCause != nil) {
        queryParams[@"publicEffectOrCause"] = publicEffectOrCause;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
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
                              responseType: @"SWGVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVariable*)data, error);
                                }
                           }
          ];
}

///
/// Delete All Measurements For Variable
/// Users can delete all of their measurements for a variable
///  @param variableId Id of the variable whose measurements should be deleted 
///
///  @returns void
///
-(NSNumber*) v1UserVariablesDeletePostWithVariableId: (SWGUserVariableDelete*) variableId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'variableId' is set
    if (variableId == nil) {
        NSParameterAssert(variableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableId"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userVariables/delete"];

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
    bodyParam = variableId;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
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
/// Update User Settings for a Variable
/// Users can change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
///  @param userVariables Variable user settings data 
///
///  @returns void
///
-(NSNumber*) v1UserVariablesPostWithUserVariables: (SWGUserVariables*) userVariables
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'userVariables' is set
    if (userVariables == nil) {
        NSParameterAssert(userVariables);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userVariables"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userVariables"];

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
    bodyParam = userVariables;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
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
/// Reset user settings for a variable to defaults
/// Reset user settings for a variable to defaults
///  @param variableId Id of the variable that should be reset 
///
///  @returns void
///
-(NSNumber*) v1UserVariablesResetPostWithVariableId: (SWGUserVariableDelete*) variableId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'variableId' is set
    if (variableId == nil) {
        NSParameterAssert(variableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableId"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userVariables/reset"];

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
    bodyParam = variableId;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
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
/// Variable categories
/// The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
///  @returns NSArray<SWGVariableCategory>*
///
-(NSNumber*) v1VariableCategoriesGetWithCompletionHandler: 
    (void (^)(NSArray<SWGVariableCategory>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variableCategories"];

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
                              responseType: @"NSArray<SWGVariableCategory>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGVariableCategory>*)data, error);
                                }
                           }
          ];
}

///
/// Get variables with user's settings
/// Get variables for which the user has measurements. If the user has specified variable settings, these are provided instead of the common variable defaults.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param _id Common variable id (optional)
///
///  @param category Filter data by category (optional)
///
///  @param name Original name of the variable (supports exact name match only) (optional)
///
///  @param updatedAt Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
///
///  @param source The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here (optional)
///
///  @param latestMeasurementTime Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
///
///  @param numberOfRawMeasurements Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. (optional)
///
///  @param lastSource Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns SWGVariable*
///
-(NSNumber*) v1VariablesGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    category: (NSString*) category
    name: (NSString*) name
    updatedAt: (NSString*) updatedAt
    source: (NSString*) source
    latestMeasurementTime: (NSString*) latestMeasurementTime
    numberOfRawMeasurements: (NSString*) numberOfRawMeasurements
    lastSource: (NSString*) lastSource
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables"];

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
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (category != nil) {
        queryParams[@"category"] = category;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (updatedAt != nil) {
        queryParams[@"updatedAt"] = updatedAt;
    }
    if (source != nil) {
        queryParams[@"source"] = source;
    }
    if (latestMeasurementTime != nil) {
        queryParams[@"latestMeasurementTime"] = latestMeasurementTime;
    }
    if (numberOfRawMeasurements != nil) {
        queryParams[@"numberOfRawMeasurements"] = numberOfRawMeasurements;
    }
    if (lastSource != nil) {
        queryParams[@"lastSource"] = lastSource;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
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
                              responseType: @"SWGVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVariable*)data, error);
                                }
                           }
          ];
}

///
/// Create Variables
/// Allows the client to create a new variable in the `variables` table.
///  @param body Original name for the variable. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1VariablesPostWithBody: (SWGVariablesNew*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables"];

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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
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
/// Get variables by search query
/// Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
///  @param search Search query which may be an entire variable name or a fragment of one. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param variableCategoryName Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (optional)
///
///  @param includePublic Set to true if you would like to include public variables when no user variables are found. (optional)
///
///  @param manualTracking Set to true if you would like to exlude variables like apps and website names. (optional)
///
///  @param source Specify a data source name to only return variables from a specific data source. (optional)
///
///  @param effectOrCause Indicate if you only want variables that have user correlations. Possible values are effect and cause. (optional)
///
///  @param publicEffectOrCause Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @returns NSArray<SWGVariable>*
///
-(NSNumber*) v1VariablesSearchSearchGetWithSearch: (NSString*) search
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    includePublic: (NSNumber*) includePublic
    manualTracking: (NSNumber*) manualTracking
    source: (NSString*) source
    effectOrCause: (NSString*) effectOrCause
    publicEffectOrCause: (NSString*) publicEffectOrCause
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    completionHandler: (void (^)(NSArray<SWGVariable>* output, NSError* error)) handler {
    // verify the required parameter 'search' is set
    if (search == nil) {
        NSParameterAssert(search);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"search"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/search/{search}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (variableCategoryName != nil) {
        queryParams[@"variableCategoryName"] = variableCategoryName;
    }
    if (includePublic != nil) {
        queryParams[@"includePublic"] = includePublic;
    }
    if (manualTracking != nil) {
        queryParams[@"manualTracking"] = manualTracking;
    }
    if (source != nil) {
        queryParams[@"source"] = source;
    }
    if (effectOrCause != nil) {
        queryParams[@"effectOrCause"] = effectOrCause;
    }
    if (publicEffectOrCause != nil) {
        queryParams[@"publicEffectOrCause"] = publicEffectOrCause;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"NSArray<SWGVariable>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGVariable>*)data, error);
                                }
                           }
          ];
}

///
/// Get info about a variable
/// Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
///  @param variableName Variable name 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns SWGVariable*
///
-(NSNumber*) v1VariablesVariableNameGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGVariablesApiErrorDomain code:kSWGVariablesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
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
                              responseType: @"SWGVariable*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGVariable*)data, error);
                                }
                           }
          ];
}



@end
