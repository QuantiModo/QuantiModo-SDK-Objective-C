#import "SWGAggregatedCorrelationApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse200.h"
#import "SWGInlineResponse2001.h"
#import "SWGAggregatedCorrelation.h"
#import "SWGInlineResponse2002.h"


@interface SWGAggregatedCorrelationApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGAggregatedCorrelationApi

static SWGAggregatedCorrelationApi* singletonAPI = nil;

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

+(SWGAggregatedCorrelationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGAggregatedCorrelationApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGAggregatedCorrelationApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGAggregatedCorrelationApi alloc] init];
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
/// Get all AggregatedCorrelations
/// Get all AggregatedCorrelations
///  @param correlation correlation
///
///  @param causeId cause_id
///
///  @param effectId effect_id
///
///  @param onsetDelay onset_delay
///
///  @param durationOfAction duration_of_action
///
///  @param numberOfPairs number_of_pairs
///
///  @param valuePredictingHighOutcome value_predicting_high_outcome
///
///  @param valuePredictingLowOutcome value_predicting_low_outcome
///
///  @param optimalPearsonProduct optimal_pearson_product
///
///  @param vote vote
///
///  @param numberOfUsers number_of_users
///
///  @param numberOfCorrelations number_of_correlations
///
///  @param statisticalSignificance statistical_significance
///
///  @param causeUnit cause_unit
///
///  @param causeUnitId cause_unit_id
///
///  @param causeChanges cause_changes
///
///  @param effectChanges effect_changes
///
///  @param aggregateQmScore aggregate_qm_score
///
///  @param createdAt created_at
///
///  @param updatedAt updated_at
///
///  @param status status
///
///  @param errorMessage error_message
///
///  @param lastSuccessfulUpdateTime last_successful_update_time
///
///  @param reversePearsonCorrelationCoefficient reverse_pearson_correlation_coefficient
///
///  @param predictivePearsonCorrelationCoefficient predictive_pearson_correlation_coefficient
///
///  @param limit limit
///
///  @param offset offset
///
///  @param sort sort
///
///  @returns SWGInlineResponse200*
///
-(NSNumber*) aggregatedCorrelationsGetWithCompletionBlock: (NSNumber*) correlation
         causeId: (NSNumber*) causeId
         effectId: (NSNumber*) effectId
         onsetDelay: (NSNumber*) onsetDelay
         durationOfAction: (NSNumber*) durationOfAction
         numberOfPairs: (NSNumber*) numberOfPairs
         valuePredictingHighOutcome: (NSNumber*) valuePredictingHighOutcome
         valuePredictingLowOutcome: (NSNumber*) valuePredictingLowOutcome
         optimalPearsonProduct: (NSNumber*) optimalPearsonProduct
         vote: (NSNumber*) vote
         numberOfUsers: (NSNumber*) numberOfUsers
         numberOfCorrelations: (NSNumber*) numberOfCorrelations
         statisticalSignificance: (NSNumber*) statisticalSignificance
         causeUnit: (NSString*) causeUnit
         causeUnitId: (NSNumber*) causeUnitId
         causeChanges: (NSNumber*) causeChanges
         effectChanges: (NSNumber*) effectChanges
         aggregateQmScore: (NSNumber*) aggregateQmScore
         createdAt: (NSString*) createdAt
         updatedAt: (NSString*) updatedAt
         status: (NSString*) status
         errorMessage: (NSString*) errorMessage
         lastSuccessfulUpdateTime: (NSString*) lastSuccessfulUpdateTime
         reversePearsonCorrelationCoefficient: (NSNumber*) reversePearsonCorrelationCoefficient
         predictivePearsonCorrelationCoefficient: (NSNumber*) predictivePearsonCorrelationCoefficient
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSString*) sort
        
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/aggregatedCorrelations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(correlation != nil) {
        
        queryParams[@"correlation"] = correlation;
    }
    if(causeId != nil) {
        
        queryParams[@"cause_id"] = causeId;
    }
    if(effectId != nil) {
        
        queryParams[@"effect_id"] = effectId;
    }
    if(onsetDelay != nil) {
        
        queryParams[@"onset_delay"] = onsetDelay;
    }
    if(durationOfAction != nil) {
        
        queryParams[@"duration_of_action"] = durationOfAction;
    }
    if(numberOfPairs != nil) {
        
        queryParams[@"number_of_pairs"] = numberOfPairs;
    }
    if(valuePredictingHighOutcome != nil) {
        
        queryParams[@"value_predicting_high_outcome"] = valuePredictingHighOutcome;
    }
    if(valuePredictingLowOutcome != nil) {
        
        queryParams[@"value_predicting_low_outcome"] = valuePredictingLowOutcome;
    }
    if(optimalPearsonProduct != nil) {
        
        queryParams[@"optimal_pearson_product"] = optimalPearsonProduct;
    }
    if(vote != nil) {
        
        queryParams[@"vote"] = vote;
    }
    if(numberOfUsers != nil) {
        
        queryParams[@"number_of_users"] = numberOfUsers;
    }
    if(numberOfCorrelations != nil) {
        
        queryParams[@"number_of_correlations"] = numberOfCorrelations;
    }
    if(statisticalSignificance != nil) {
        
        queryParams[@"statistical_significance"] = statisticalSignificance;
    }
    if(causeUnit != nil) {
        
        queryParams[@"cause_unit"] = causeUnit;
    }
    if(causeUnitId != nil) {
        
        queryParams[@"cause_unit_id"] = causeUnitId;
    }
    if(causeChanges != nil) {
        
        queryParams[@"cause_changes"] = causeChanges;
    }
    if(effectChanges != nil) {
        
        queryParams[@"effect_changes"] = effectChanges;
    }
    if(aggregateQmScore != nil) {
        
        queryParams[@"aggregate_qm_score"] = aggregateQmScore;
    }
    if(createdAt != nil) {
        
        queryParams[@"created_at"] = createdAt;
    }
    if(updatedAt != nil) {
        
        queryParams[@"updated_at"] = updatedAt;
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
    if(reversePearsonCorrelationCoefficient != nil) {
        
        queryParams[@"reverse_pearson_correlation_coefficient"] = reversePearsonCorrelationCoefficient;
    }
    if(predictivePearsonCorrelationCoefficient != nil) {
        
        queryParams[@"predictive_pearson_correlation_coefficient"] = predictivePearsonCorrelationCoefficient;
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
                                         responseType: @"SWGInlineResponse200*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse200*)data, error);
              }
          ];
}

///
/// Store AggregatedCorrelation
/// Store AggregatedCorrelation
///  @param body AggregatedCorrelation that should be stored
///
///  @returns SWGInlineResponse2001*
///
-(NSNumber*) aggregatedCorrelationsPostWithCompletionBlock: (SWGAggregatedCorrelation*) body
        
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/aggregatedCorrelations"];

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
                                         responseType: @"SWGInlineResponse2001*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse2001*)data, error);
              }
          ];
}

///
/// Get AggregatedCorrelation
/// Get AggregatedCorrelation
///  @param _id id of AggregatedCorrelation
///
///  @returns SWGInlineResponse2001*
///
-(NSNumber*) aggregatedCorrelationsIdGetWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `aggregatedCorrelationsIdGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/aggregatedCorrelations/{id}"];

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
                                         responseType: @"SWGInlineResponse2001*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse2001*)data, error);
              }
          ];
}

///
/// Update AggregatedCorrelation
/// Update AggregatedCorrelation
///  @param _id id of AggregatedCorrelation
///
///  @param body AggregatedCorrelation that should be updated
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) aggregatedCorrelationsIdPutWithCompletionBlock: (NSNumber*) _id
         body: (SWGAggregatedCorrelation*) body
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `aggregatedCorrelationsIdPut`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/aggregatedCorrelations/{id}"];

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
/// Delete AggregatedCorrelation
/// Delete AggregatedCorrelation
///  @param _id id of AggregatedCorrelation
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) aggregatedCorrelationsIdDeleteWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `aggregatedCorrelationsIdDelete`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/aggregatedCorrelations/{id}"];

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
