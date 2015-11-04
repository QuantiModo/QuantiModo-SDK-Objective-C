#import "SWGVariableApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse20027.h"
#import "SWGVariable.h"
#import "SWGInlineResponse20028.h"
#import "SWGInlineResponse2002.h"


@interface SWGVariableApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVariableApi

static SWGVariableApi* singletonAPI = nil;

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

+(SWGVariableApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariableApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGVariableApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariableApi alloc] init];
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
/// Get all Variables
/// Get all Variables
///  @param _id id
///
///  @param clientId client_id
///
///  @param parentId parent_id
///
///  @param name name
///
///  @param variableCategoryId variable_category_id
///
///  @param defaultUnitId default_unit_id
///
///  @param combinationOperation combination_operation
///
///  @param fillingValue filling_value
///
///  @param maximumAllowedValue maximum_allowed_value
///
///  @param minimumAllowedValue minimum_allowed_value
///
///  @param onsetDelay onset_delay
///
///  @param durationOfAction duration_of_action
///
///  @param public public
///
///  @param causeOnly cause_only
///
///  @param mostCommonValue most_common_value
///
///  @param mostCommonUnitId most_common_unit_id
///
///  @param standardDeviation standard_deviation
///
///  @param variance variance
///
///  @param mean mean
///
///  @param median median
///
///  @param numberOfMeasurements number_of_measurements
///
///  @param numberOfUniqueValues number_of_unique_values
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
///  @param status status
///
///  @param errorMessage error_message
///
///  @param lastSuccessfulUpdateTime last_successful_update_time
///
///  @param createdAt created_at
///
///  @param updatedAt updated_at
///
///  @param productUrl product_url
///
///  @param imageUrl image_url
///
///  @param price price
///
///  @param numberOfUserVariables number_of_user_variables
///
///  @param outcome outcome
///
///  @param minimumRecordedValue minimum_recorded_value
///
///  @param maximumRecordedValue maximum_recorded_value
///
///  @param limit limit
///
///  @param offset offset
///
///  @param sort sort
///
///  @returns SWGInlineResponse20027*
///
-(NSNumber*) variablesGetWithCompletionBlock: (NSNumber*) _id
         clientId: (NSString*) clientId
         parentId: (NSNumber*) parentId
         name: (NSString*) name
         variableCategoryId: (NSNumber*) variableCategoryId
         defaultUnitId: (NSNumber*) defaultUnitId
         combinationOperation: (NSString*) combinationOperation
         fillingValue: (NSNumber*) fillingValue
         maximumAllowedValue: (NSNumber*) maximumAllowedValue
         minimumAllowedValue: (NSNumber*) minimumAllowedValue
         onsetDelay: (NSNumber*) onsetDelay
         durationOfAction: (NSNumber*) durationOfAction
         public: (NSNumber*) public
         causeOnly: (NSNumber*) causeOnly
         mostCommonValue: (NSNumber*) mostCommonValue
         mostCommonUnitId: (NSNumber*) mostCommonUnitId
         standardDeviation: (NSNumber*) standardDeviation
         variance: (NSNumber*) variance
         mean: (NSNumber*) mean
         median: (NSNumber*) median
         numberOfMeasurements: (NSNumber*) numberOfMeasurements
         numberOfUniqueValues: (NSNumber*) numberOfUniqueValues
         skewness: (NSNumber*) skewness
         kurtosis: (NSNumber*) kurtosis
         latitude: (NSNumber*) latitude
         longitude: (NSNumber*) longitude
         location: (NSString*) location
         status: (NSString*) status
         errorMessage: (NSString*) errorMessage
         lastSuccessfulUpdateTime: (NSString*) lastSuccessfulUpdateTime
         createdAt: (NSString*) createdAt
         updatedAt: (NSString*) updatedAt
         productUrl: (NSString*) productUrl
         imageUrl: (NSString*) imageUrl
         price: (NSNumber*) price
         numberOfUserVariables: (NSNumber*) numberOfUserVariables
         outcome: (NSNumber*) outcome
         minimumRecordedValue: (NSNumber*) minimumRecordedValue
         maximumRecordedValue: (NSNumber*) maximumRecordedValue
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSString*) sort
        
        completionHandler: (void (^)(SWGInlineResponse20027* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if(clientId != nil) {
        
        queryParams[@"client_id"] = clientId;
    }
    if(parentId != nil) {
        
        queryParams[@"parent_id"] = parentId;
    }
    if(name != nil) {
        
        queryParams[@"name"] = name;
    }
    if(variableCategoryId != nil) {
        
        queryParams[@"variable_category_id"] = variableCategoryId;
    }
    if(defaultUnitId != nil) {
        
        queryParams[@"default_unit_id"] = defaultUnitId;
    }
    if(combinationOperation != nil) {
        
        queryParams[@"combination_operation"] = combinationOperation;
    }
    if(fillingValue != nil) {
        
        queryParams[@"filling_value"] = fillingValue;
    }
    if(maximumAllowedValue != nil) {
        
        queryParams[@"maximum_allowed_value"] = maximumAllowedValue;
    }
    if(minimumAllowedValue != nil) {
        
        queryParams[@"minimum_allowed_value"] = minimumAllowedValue;
    }
    if(onsetDelay != nil) {
        
        queryParams[@"onset_delay"] = onsetDelay;
    }
    if(durationOfAction != nil) {
        
        queryParams[@"duration_of_action"] = durationOfAction;
    }
    if(public != nil) {
        
        queryParams[@"public"] = public;
    }
    if(causeOnly != nil) {
        
        queryParams[@"cause_only"] = causeOnly;
    }
    if(mostCommonValue != nil) {
        
        queryParams[@"most_common_value"] = mostCommonValue;
    }
    if(mostCommonUnitId != nil) {
        
        queryParams[@"most_common_unit_id"] = mostCommonUnitId;
    }
    if(standardDeviation != nil) {
        
        queryParams[@"standard_deviation"] = standardDeviation;
    }
    if(variance != nil) {
        
        queryParams[@"variance"] = variance;
    }
    if(mean != nil) {
        
        queryParams[@"mean"] = mean;
    }
    if(median != nil) {
        
        queryParams[@"median"] = median;
    }
    if(numberOfMeasurements != nil) {
        
        queryParams[@"number_of_measurements"] = numberOfMeasurements;
    }
    if(numberOfUniqueValues != nil) {
        
        queryParams[@"number_of_unique_values"] = numberOfUniqueValues;
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
    if(status != nil) {
        
        queryParams[@"status"] = status;
    }
    if(errorMessage != nil) {
        
        queryParams[@"error_message"] = errorMessage;
    }
    if(lastSuccessfulUpdateTime != nil) {
        
        queryParams[@"last_successful_update_time"] = lastSuccessfulUpdateTime;
    }
    if(createdAt != nil) {
        
        queryParams[@"created_at"] = createdAt;
    }
    if(updatedAt != nil) {
        
        queryParams[@"updated_at"] = updatedAt;
    }
    if(productUrl != nil) {
        
        queryParams[@"product_url"] = productUrl;
    }
    if(imageUrl != nil) {
        
        queryParams[@"image_url"] = imageUrl;
    }
    if(price != nil) {
        
        queryParams[@"price"] = price;
    }
    if(numberOfUserVariables != nil) {
        
        queryParams[@"number_of_user_variables"] = numberOfUserVariables;
    }
    if(outcome != nil) {
        
        queryParams[@"outcome"] = outcome;
    }
    if(minimumRecordedValue != nil) {
        
        queryParams[@"minimum_recorded_value"] = minimumRecordedValue;
    }
    if(maximumRecordedValue != nil) {
        
        queryParams[@"maximum_recorded_value"] = maximumRecordedValue;
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
                                         responseType: @"SWGInlineResponse20027*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20027*)data, error);
              }
          ];
}

///
/// Store Variable
/// Store Variable
///  @param body Variable that should be stored
///
///  @returns SWGInlineResponse20028*
///
-(NSNumber*) variablesPostWithCompletionBlock: (SWGVariable*) body
        
        completionHandler: (void (^)(SWGInlineResponse20028* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables"];

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
                                         responseType: @"SWGInlineResponse20028*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20028*)data, error);
              }
          ];
}

///
/// Get Variable
/// Get Variable
///  @param _id id of Variable
///
///  @returns SWGInlineResponse20028*
///
-(NSNumber*) variablesIdGetWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse20028* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variablesIdGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables/{id}"];

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
                                         responseType: @"SWGInlineResponse20028*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20028*)data, error);
              }
          ];
}

///
/// Update Variable
/// Update Variable
///  @param _id id of Variable
///
///  @param body Variable that should be updated
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) variablesIdPutWithCompletionBlock: (NSNumber*) _id
         body: (SWGVariable*) body
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variablesIdPut`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables/{id}"];

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
/// Delete Variable
/// Delete Variable
///  @param _id id of Variable
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) variablesIdDeleteWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variablesIdDelete`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables/{id}"];

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
