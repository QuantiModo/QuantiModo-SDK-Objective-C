#import "SWGUserVariableApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse20021.h"
#import "SWGInlineResponse20022.h"
#import "SWGUserVariable.h"
#import "SWGInlineResponse2002.h"


@interface SWGUserVariableApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGUserVariableApi

static SWGUserVariableApi* singletonAPI = nil;

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

+(SWGUserVariableApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUserVariableApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGUserVariableApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUserVariableApi alloc] init];
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
/// Get all UserVariables
/// Get all UserVariables
///  @param clientId client_id
///
///  @param variableId variable_id
///
///  @param defaultUnitId default_unit_id
///
///  @param minimumAllowedValue minimum_allowed_value
///
///  @param maximumAllowedValue maximum_allowed_value
///
///  @param fillingValue filling_value
///
///  @param joinWith join_with
///
///  @param onsetDelay onset_delay
///
///  @param durationOfAction duration_of_action
///
///  @param variableCategoryId variable_category_id
///
///  @param updated updated
///
///  @param public public
///
///  @param causeOnly cause_only
///
///  @param fillingType filling_type
///
///  @param numberOfMeasurements number_of_measurements
///
///  @param numberOfProcessedMeasurements number_of_processed_measurements
///
///  @param measurementsAtLastAnalysis measurements_at_last_analysis
///
///  @param lastUnitId last_unit_id
///
///  @param lastOriginalUnitId last_original_unit_id
///
///  @param lastOriginalValue last_original_value
///
///  @param lastValue last_value
///
///  @param lastSourceId last_source_id
///
///  @param numberOfCorrelations number_of_correlations
///
///  @param status status
///
///  @param errorMessage error_message
///
///  @param lastSuccessfulUpdateTime last_successful_update_time
///
///  @param standardDeviation standard_deviation
///
///  @param variance variance
///
///  @param minimumRecordedDailyValue minimum_recorded_daily_value
///
///  @param maximumRecordedDailyValue maximum_recorded_daily_value
///
///  @param mean mean
///
///  @param median median
///
///  @param mostCommonUnitId most_common_unit_id
///
///  @param mostCommonValue most_common_value
///
///  @param numberOfUniqueDailyValues number_of_unique_daily_values
///
///  @param numberOfChanges number_of_changes
///
///  @param skewness skewness
///
///  @param kurtosis kurtosis
///
///  @param latitude latitude
///
///  @param longitude longitude
///
///  @param location location
///
///  @param createdAt created_at
///
///  @param updatedAt updated_at
///
///  @param outcome outcome
///
///  @param sources sources
///
///  @param earliestSourceTime earliest_source_time
///
///  @param latestSourceTime latest_source_time
///
///  @param earliestMeasurementTime earliest_measurement_time
///
///  @param latestMeasurementTime latest_measurement_time
///
///  @param earliestFillingTime earliest_filling_time
///
///  @param latestFillingTime latest_filling_time
///
///  @param limit limit
///
///  @param offset offset
///
///  @param sort sort
///
///  @returns SWGInlineResponse20021*
///
-(NSNumber*) userVariablesGetWithCompletionBlock: (NSString*) clientId
         variableId: (NSNumber*) variableId
         defaultUnitId: (NSNumber*) defaultUnitId
         minimumAllowedValue: (NSNumber*) minimumAllowedValue
         maximumAllowedValue: (NSNumber*) maximumAllowedValue
         fillingValue: (NSNumber*) fillingValue
         joinWith: (NSNumber*) joinWith
         onsetDelay: (NSNumber*) onsetDelay
         durationOfAction: (NSNumber*) durationOfAction
         variableCategoryId: (NSNumber*) variableCategoryId
         updated: (NSNumber*) updated
         public: (NSNumber*) public
         causeOnly: (NSNumber*) causeOnly
         fillingType: (NSString*) fillingType
         numberOfMeasurements: (NSNumber*) numberOfMeasurements
         numberOfProcessedMeasurements: (NSNumber*) numberOfProcessedMeasurements
         measurementsAtLastAnalysis: (NSNumber*) measurementsAtLastAnalysis
         lastUnitId: (NSNumber*) lastUnitId
         lastOriginalUnitId: (NSNumber*) lastOriginalUnitId
         lastOriginalValue: (NSNumber*) lastOriginalValue
         lastValue: (NSNumber*) lastValue
         lastSourceId: (NSNumber*) lastSourceId
         numberOfCorrelations: (NSNumber*) numberOfCorrelations
         status: (NSString*) status
         errorMessage: (NSString*) errorMessage
         lastSuccessfulUpdateTime: (NSString*) lastSuccessfulUpdateTime
         standardDeviation: (NSNumber*) standardDeviation
         variance: (NSNumber*) variance
         minimumRecordedDailyValue: (NSNumber*) minimumRecordedDailyValue
         maximumRecordedDailyValue: (NSNumber*) maximumRecordedDailyValue
         mean: (NSNumber*) mean
         median: (NSNumber*) median
         mostCommonUnitId: (NSNumber*) mostCommonUnitId
         mostCommonValue: (NSNumber*) mostCommonValue
         numberOfUniqueDailyValues: (NSNumber*) numberOfUniqueDailyValues
         numberOfChanges: (NSNumber*) numberOfChanges
         skewness: (NSNumber*) skewness
         kurtosis: (NSNumber*) kurtosis
         latitude: (NSNumber*) latitude
         longitude: (NSNumber*) longitude
         location: (NSString*) location
         createdAt: (NSString*) createdAt
         updatedAt: (NSString*) updatedAt
         outcome: (NSNumber*) outcome
         sources: (NSString*) sources
         earliestSourceTime: (NSNumber*) earliestSourceTime
         latestSourceTime: (NSNumber*) latestSourceTime
         earliestMeasurementTime: (NSNumber*) earliestMeasurementTime
         latestMeasurementTime: (NSNumber*) latestMeasurementTime
         earliestFillingTime: (NSNumber*) earliestFillingTime
         latestFillingTime: (NSNumber*) latestFillingTime
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSString*) sort
        
        completionHandler: (void (^)(SWGInlineResponse20021* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/userVariables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(variableId != nil) {
        
        queryParams[@"variable_id"] = variableId;
    }
    if(defaultUnitId != nil) {
        
        queryParams[@"default_unit_id"] = defaultUnitId;
    }
    if(minimumAllowedValue != nil) {
        
        queryParams[@"minimum_allowed_value"] = minimumAllowedValue;
    }
    if(maximumAllowedValue != nil) {
        
        queryParams[@"maximum_allowed_value"] = maximumAllowedValue;
    }
    if(fillingValue != nil) {
        
        queryParams[@"filling_value"] = fillingValue;
    }
    if(joinWith != nil) {
        
        queryParams[@"join_with"] = joinWith;
    }
    if(onsetDelay != nil) {
        
        queryParams[@"onset_delay"] = onsetDelay;
    }
    if(durationOfAction != nil) {
        
        queryParams[@"duration_of_action"] = durationOfAction;
    }
    if(variableCategoryId != nil) {
        
        queryParams[@"variable_category_id"] = variableCategoryId;
    }
    if(updated != nil) {
        
        queryParams[@"updated"] = updated;
    }
    if(public != nil) {
        
        queryParams[@"public"] = public;
    }
    if(causeOnly != nil) {
        
        queryParams[@"cause_only"] = causeOnly;
    }
    if(fillingType != nil) {
        
        queryParams[@"filling_type"] = fillingType;
    }
    if(numberOfMeasurements != nil) {
        
        queryParams[@"number_of_measurements"] = numberOfMeasurements;
    }
    if(numberOfProcessedMeasurements != nil) {
        
        queryParams[@"number_of_processed_measurements"] = numberOfProcessedMeasurements;
    }
    if(measurementsAtLastAnalysis != nil) {
        
        queryParams[@"measurements_at_last_analysis"] = measurementsAtLastAnalysis;
    }
    if(lastUnitId != nil) {
        
        queryParams[@"last_unit_id"] = lastUnitId;
    }
    if(lastOriginalUnitId != nil) {
        
        queryParams[@"last_original_unit_id"] = lastOriginalUnitId;
    }
    if(lastOriginalValue != nil) {
        
        queryParams[@"last_original_value"] = lastOriginalValue;
    }
    if(lastValue != nil) {
        
        queryParams[@"last_value"] = lastValue;
    }
    if(lastSourceId != nil) {
        
        queryParams[@"last_source_id"] = lastSourceId;
    }
    if(numberOfCorrelations != nil) {
        
        queryParams[@"number_of_correlations"] = numberOfCorrelations;
    }
    if(status != nil) {
        
        queryParams[@"status"] = status;
    }
    if(errorMessage != nil) {
        
        queryParams[@"error_message"] = errorMessage;
    }
    if(lastSuccessfulUpdateTime != nil) {
        
        queryParams[@"last_successful_update_time"] = lastSuccessfulUpdateTime;
    }
    if(standardDeviation != nil) {
        
        queryParams[@"standard_deviation"] = standardDeviation;
    }
    if(variance != nil) {
        
        queryParams[@"variance"] = variance;
    }
    if(minimumRecordedDailyValue != nil) {
        
        queryParams[@"minimum_recorded_daily_value"] = minimumRecordedDailyValue;
    }
    if(maximumRecordedDailyValue != nil) {
        
        queryParams[@"maximum_recorded_daily_value"] = maximumRecordedDailyValue;
    }
    if(mean != nil) {
        
        queryParams[@"mean"] = mean;
    }
    if(median != nil) {
        
        queryParams[@"median"] = median;
    }
    if(mostCommonUnitId != nil) {
        
        queryParams[@"most_common_unit_id"] = mostCommonUnitId;
    }
    if(mostCommonValue != nil) {
        
        queryParams[@"most_common_value"] = mostCommonValue;
    }
    if(numberOfUniqueDailyValues != nil) {
        
        queryParams[@"number_of_unique_daily_values"] = numberOfUniqueDailyValues;
    }
    if(numberOfChanges != nil) {
        
        queryParams[@"number_of_changes"] = numberOfChanges;
    }
    if(skewness != nil) {
        
        queryParams[@"skewness"] = skewness;
    }
    if(kurtosis != nil) {
        
        queryParams[@"kurtosis"] = kurtosis;
    }
    if(latitude != nil) {
        
        queryParams[@"latitude"] = latitude;
    }
    if(longitude != nil) {
        
        queryParams[@"longitude"] = longitude;
    }
    if(location != nil) {
        
        queryParams[@"location"] = location;
    }
    if(createdAt != nil) {
        
        queryParams[@"created_at"] = createdAt;
    }
    if(updatedAt != nil) {
        
        queryParams[@"updated_at"] = updatedAt;
    }
    if(outcome != nil) {
        
        queryParams[@"outcome"] = outcome;
    }
    if(sources != nil) {
        
        queryParams[@"sources"] = sources;
    }
    if(earliestSourceTime != nil) {
        
        queryParams[@"earliest_source_time"] = earliestSourceTime;
    }
    if(latestSourceTime != nil) {
        
        queryParams[@"latest_source_time"] = latestSourceTime;
    }
    if(earliestMeasurementTime != nil) {
        
        queryParams[@"earliest_measurement_time"] = earliestMeasurementTime;
    }
    if(latestMeasurementTime != nil) {
        
        queryParams[@"latest_measurement_time"] = latestMeasurementTime;
    }
    if(earliestFillingTime != nil) {
        
        queryParams[@"earliest_filling_time"] = earliestFillingTime;
    }
    if(latestFillingTime != nil) {
        
        queryParams[@"latest_filling_time"] = latestFillingTime;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(sort != nil) {
        
        queryParams[@"sort"] = sort;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

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
                                         responseType: @"SWGInlineResponse20021*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20021*)data, error);
              }
          ];
}

///
/// Store UserVariable
/// Store UserVariable
///  @param body UserVariable that should be stored
///
///  @returns SWGInlineResponse20022*
///
-(NSNumber*) userVariablesPostWithCompletionBlock: (SWGUserVariable*) body
        
        completionHandler: (void (^)(SWGInlineResponse20022* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/userVariables"];

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = body;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGInlineResponse20022*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20022*)data, error);
              }
          ];
}

///
/// Get UserVariable
/// Get UserVariable
///  @param _id id of UserVariable
///
///  @returns SWGInlineResponse20022*
///
-(NSNumber*) userVariablesIdGetWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse20022* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `userVariablesIdGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/userVariables/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

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
                                         responseType: @"SWGInlineResponse20022*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20022*)data, error);
              }
          ];
}

///
/// Update UserVariable
/// Update UserVariable
///  @param _id id of UserVariable
///
///  @param body UserVariable that should be updated
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) userVariablesIdPutWithCompletionBlock: (NSNumber*) _id
         body: (SWGUserVariable*) body
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `userVariablesIdPut`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/userVariables/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = body;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGInlineResponse2002*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse2002*)data, error);
              }
          ];
}

///
/// Delete UserVariable
/// Delete UserVariable
///  @param _id id of UserVariable
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) userVariablesIdDeleteWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `userVariablesIdDelete`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/userVariables/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGInlineResponse2002*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse2002*)data, error);
              }
          ];
}



@end
