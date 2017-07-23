#import "SWGMeasurementsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGCommonResponse.h"
#import "SWGMeasurement.h"
#import "SWGMeasurementDelete.h"
#import "SWGMeasurementRange.h"
#import "SWGMeasurementSet.h"
#import "SWGMeasurementSource.h"
#import "SWGMeasurementUpdate.h"


@interface SWGMeasurementsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGMeasurementsApi

NSString* kSWGMeasurementsApiErrorDomain = @"SWGMeasurementsApiErrorDomain";
NSInteger kSWGMeasurementsApiMissingParamErrorCode = 234513;

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
    static SWGMeasurementsApi *sharedAPI;
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
/// Get measurement sources
/// Returns a list of all the apps from which measurement data is obtained.
///  @returns SWGMeasurementSource*
///
-(NSNumber*) v1MeasurementSourcesGetWithCompletionHandler: 
    (void (^)(SWGMeasurementSource* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementSources"];

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
                              responseType: @"SWGMeasurementSource*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGMeasurementSource*)data, error);
                                }
                           }
          ];
}

///
/// Add a data source
/// Add a life-tracking app or device to the QuantiModo list of data sources.
///  @param body An array of names of data sources you want to add. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1MeasurementSourcesPostWithBody: (SWGMeasurementSource*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGMeasurementsApiErrorDomain code:kSWGMeasurementsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementSources"];

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
/// Get daily measurements for this user
/// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>
///  @param variableName Name of the variable you want measurements for 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param unitAbbreviatedName The unit your want the measurements in (optional)
///
///  @param startTime The lower limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format) (optional)
///
///  @param endTime The upper limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format) (optional)
///
///  @param groupingWidth The time (in seconds) over which measurements are grouped together (optional)
///
///  @param groupingTimezone The time (in seconds) over which measurements are grouped together (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns SWGMeasurement*
///
-(NSNumber*) v1MeasurementsDailyGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    startTime: (NSString*) startTime
    endTime: (NSString*) endTime
    groupingWidth: (NSNumber*) groupingWidth
    groupingTimezone: (NSString*) groupingTimezone
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    completionHandler: (void (^)(SWGMeasurement* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGMeasurementsApiErrorDomain code:kSWGMeasurementsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements/daily"];

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
    if (variableName != nil) {
        queryParams[@"variableName"] = variableName;
    }
    if (unitAbbreviatedName != nil) {
        queryParams[@"unitAbbreviatedName"] = unitAbbreviatedName;
    }
    if (startTime != nil) {
        queryParams[@"startTime"] = startTime;
    }
    if (endTime != nil) {
        queryParams[@"endTime"] = endTime;
    }
    if (groupingWidth != nil) {
        queryParams[@"groupingWidth"] = groupingWidth;
    }
    if (groupingTimezone != nil) {
        queryParams[@"groupingTimezone"] = groupingTimezone;
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
                              responseType: @"SWGMeasurement*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGMeasurement*)data, error);
                                }
                           }
          ];
}

///
/// Delete a measurement
/// Delete a previously submitted measurement
///  @param body The startTime and variableId of the measurement to be deleted. 
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1MeasurementsDeletePostWithBody: (SWGMeasurementDelete*) body
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGMeasurementsApiErrorDomain code:kSWGMeasurementsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements/delete"];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get measurements for this user
/// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param _id Measurement id (optional)
///
///  @param variableName Name of the variable you want measurements for (optional)
///
///  @param variableCategoryName Name of the variable category you want measurements for (optional)
///
///  @param sourceName ID of the source you want measurements for (supports exact name match only) (optional)
///
///  @param value Value of measurement (optional)
///
///  @param unitAbbreviatedName The unit you want the measurements returned in (optional)
///
///  @param earliestMeasurementTime The lower limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) (optional)
///
///  @param latestMeasurementTime The upper limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) (optional)
///
///  @param createdAt The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
///
///  @param updatedAt The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
///
///  @param groupingWidth The time (in seconds) over which measurements are grouped together (optional)
///
///  @param groupingTimezone The time (in seconds) over which measurements are grouped together (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns SWGMeasurement*
///
-(NSNumber*) v1MeasurementsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    variableName: (NSString*) variableName
    variableCategoryName: (NSString*) variableCategoryName
    sourceName: (NSString*) sourceName
    value: (NSString*) value
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    earliestMeasurementTime: (NSString*) earliestMeasurementTime
    latestMeasurementTime: (NSString*) latestMeasurementTime
    createdAt: (NSString*) createdAt
    updatedAt: (NSString*) updatedAt
    groupingWidth: (NSNumber*) groupingWidth
    groupingTimezone: (NSString*) groupingTimezone
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    completionHandler: (void (^)(SWGMeasurement* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements"];

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
    if (variableName != nil) {
        queryParams[@"variableName"] = variableName;
    }
    if (variableCategoryName != nil) {
        queryParams[@"variableCategoryName"] = variableCategoryName;
    }
    if (sourceName != nil) {
        queryParams[@"sourceName"] = sourceName;
    }
    if (value != nil) {
        queryParams[@"value"] = value;
    }
    if (unitAbbreviatedName != nil) {
        queryParams[@"unitAbbreviatedName"] = unitAbbreviatedName;
    }
    if (earliestMeasurementTime != nil) {
        queryParams[@"earliestMeasurementTime"] = earliestMeasurementTime;
    }
    if (latestMeasurementTime != nil) {
        queryParams[@"latestMeasurementTime"] = latestMeasurementTime;
    }
    if (createdAt != nil) {
        queryParams[@"createdAt"] = createdAt;
    }
    if (updatedAt != nil) {
        queryParams[@"updatedAt"] = updatedAt;
    }
    if (groupingWidth != nil) {
        queryParams[@"groupingWidth"] = groupingWidth;
    }
    if (groupingTimezone != nil) {
        queryParams[@"groupingTimezone"] = groupingTimezone;
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
                              responseType: @"SWGMeasurement*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGMeasurement*)data, error);
                                }
                           }
          ];
}

///
/// Post a new set or update existing measurements to the database
/// You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"startTime\":1439389320,\"value\":\"3\"}, {\"startTime\":1439389319,\"value\":\"2\"}],\"name\":\"Acne (out of 5)\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]
///  @param body An array of measurements you want to insert. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1MeasurementsPostWithBody: (SWGMeasurementSet*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGMeasurementsApiErrorDomain code:kSWGMeasurementsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements"];

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
/// Get measurements range for this user
/// Get Unix time-stamp (epoch time) of the user's first and last measurements taken.
///  @param sources Enter source name to limit to specific source (varchar) (optional)
///
///  @param user If not specified, uses currently logged in user (bigint) (optional)
///
///  @returns SWGMeasurementRange*
///
-(NSNumber*) v1MeasurementsRangeGetWithSources: (NSString*) sources
    user: (NSNumber*) user
    completionHandler: (void (^)(SWGMeasurementRange* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementsRange"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sources != nil) {
        queryParams[@"sources"] = sources;
    }
    if (user != nil) {
        queryParams[@"user"] = user;
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
                              responseType: @"SWGMeasurementRange*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGMeasurementRange*)data, error);
                                }
                           }
          ];
}

///
/// Update a measurement
/// Delete a previously submitted measurement
///  @param body The id as well as the new startTime, note, and/or value of the measurement to be updated 
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1MeasurementsUpdatePostWithBody: (SWGMeasurementUpdate*) body
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGMeasurementsApiErrorDomain code:kSWGMeasurementsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements/update"];

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
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get Measurements CSV
/// Download a CSV containing all user measurements
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns NSURL*
///
-(NSNumber*) v2MeasurementsCsvGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/measurements/csv"];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/csv"]];
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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                           }
          ];
}

///
/// Post Request for Measurements CSV
/// Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns NSNumber*
///
-(NSNumber*) v2MeasurementsRequestCsvPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/measurements/request_csv"];

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
                              responseType: @"NSNumber*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSNumber*)data, error);
                                }
                           }
          ];
}

///
/// Post Request for Measurements PDF
/// Use this endpoint to schedule a PDF export containing all user measurements to be emailed to the user within 24 hours.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns NSNumber*
///
-(NSNumber*) v2MeasurementsRequestPdfPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/measurements/request_pdf"];

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
                              responseType: @"NSNumber*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSNumber*)data, error);
                                }
                           }
          ];
}

///
/// Post Request for Measurements XLS
/// Use this endpoint to schedule a XLS export containing all user measurements to be emailed to the user within 24 hours.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns NSNumber*
///
-(NSNumber*) v2MeasurementsRequestXlsPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/measurements/request_xls"];

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
                              responseType: @"NSNumber*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSNumber*)data, error);
                                }
                           }
          ];
}



@end
