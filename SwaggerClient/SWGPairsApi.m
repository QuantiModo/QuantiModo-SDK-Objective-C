#import "SWGPairsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGPairs.h"


@interface SWGPairsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGPairsApi

static SWGPairsApi* singletonAPI = nil;

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

+(SWGPairsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPairsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGPairsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPairsApi alloc] init];
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
/// Get pairs
/// Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
///  @param cause Original variable name for the explanatory or independent variable
///
///  @param effect Original variable name for the outcome or dependent variable
///
///  @param accessToken User's OAuth2 access token
///
///  @param causeSource Name of data source that the cause measurements should come from
///
///  @param causeUnit Abbreviated name for the unit cause measurements to be returned in
///
///  @param delay Delay before onset of action (in seconds) from the cause variable settings.
///
///  @param duration Duration of action (in seconds) from the cause variable settings.
///
///  @param effectSource Name of data source that the effectmeasurements should come from
///
///  @param effectUnit Abbreviated name for the unit effect measurements to be returned in
///
///  @param endTime The most recent date (in epoch time) for which we should return measurements
///
///  @param startTime The earliest date (in epoch time) for which we should return measurements
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns NSArray<SWGPairs>*
///
-(NSNumber*) v1PairsGetWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         accessToken: (NSString*) accessToken
         causeSource: (NSString*) causeSource
         causeUnit: (NSString*) causeUnit
         delay: (NSString*) delay
         duration: (NSString*) duration
         effectSource: (NSString*) effectSource
         effectUnit: (NSString*) effectUnit
         endTime: (NSString*) endTime
         startTime: (NSString*) startTime
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1PairsGet`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1PairsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/pairs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        
        queryParams[@"access_token"] = accessToken;
    }
    if (cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if (causeSource != nil) {
        
        queryParams[@"causeSource"] = causeSource;
    }
    if (causeUnit != nil) {
        
        queryParams[@"causeUnit"] = causeUnit;
    }
    if (delay != nil) {
        
        queryParams[@"delay"] = delay;
    }
    if (duration != nil) {
        
        queryParams[@"duration"] = duration;
    }
    if (effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if (effectSource != nil) {
        
        queryParams[@"effectSource"] = effectSource;
    }
    if (effectUnit != nil) {
        
        queryParams[@"effectUnit"] = effectUnit;
    }
    if (endTime != nil) {
        
        queryParams[@"endTime"] = endTime;
    }
    if (startTime != nil) {
        
        queryParams[@"startTime"] = startTime;
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
                                         responseType: @"NSArray<SWGPairs>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGPairs>*)data, error);
              }
          ];
}

///
/// Get pairs
/// Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
///  @param cause Original variable name for the explanatory or independent variable
///
///  @param effect Original variable name for the outcome or dependent variable
///
///  @param accessToken User's OAuth2 access token
///
///  @param causeSource Name of data source that the cause measurements should come from
///
///  @param causeUnit Abbreviated name for the unit cause measurements to be returned in
///
///  @param delay Delay before onset of action (in seconds) from the cause variable settings.
///
///  @param duration Duration of action (in seconds) from the cause variable settings.
///
///  @param effectSource Name of data source that the effectmeasurements should come from
///
///  @param effectUnit Abbreviated name for the unit effect measurements to be returned in
///
///  @param endTime The most recent date (in epoch time) for which we should return measurements
///
///  @param startTime The earliest date (in epoch time) for which we should return measurements
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns NSArray<SWGPairs>*
///
-(NSNumber*) v1PairsCsvGetWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         accessToken: (NSString*) accessToken
         causeSource: (NSString*) causeSource
         causeUnit: (NSString*) causeUnit
         delay: (NSString*) delay
         duration: (NSString*) duration
         effectSource: (NSString*) effectSource
         effectUnit: (NSString*) effectUnit
         endTime: (NSString*) endTime
         startTime: (NSString*) startTime
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1PairsCsvGet`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1PairsCsvGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/pairsCsv"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        
        queryParams[@"access_token"] = accessToken;
    }
    if (cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if (causeSource != nil) {
        
        queryParams[@"causeSource"] = causeSource;
    }
    if (causeUnit != nil) {
        
        queryParams[@"causeUnit"] = causeUnit;
    }
    if (delay != nil) {
        
        queryParams[@"delay"] = delay;
    }
    if (duration != nil) {
        
        queryParams[@"duration"] = duration;
    }
    if (effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if (effectSource != nil) {
        
        queryParams[@"effectSource"] = effectSource;
    }
    if (effectUnit != nil) {
        
        queryParams[@"effectUnit"] = effectUnit;
    }
    if (endTime != nil) {
        
        queryParams[@"endTime"] = endTime;
    }
    if (startTime != nil) {
        
        queryParams[@"startTime"] = startTime;
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
                                         responseType: @"NSArray<SWGPairs>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGPairs>*)data, error);
              }
          ];
}



@end
