#import "SWGPairsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGPairs.h"


@interface SWGPairsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGPairsApi

NSString* kSWGPairsApiErrorDomain = @"SWGPairsApiErrorDomain";
NSInteger kSWGPairsApiMissingParamErrorCode = 234513;

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
    static SWGPairsApi *sharedAPI;
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
/// Get pairs
/// Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
///  @param cause Original variable name for the explanatory or independent variable 
///
///  @param effect Original variable name for the outcome or dependent variable 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param causeSource Name of data source that the cause measurements should come from (optional)
///
///  @param causeUnit Abbreviated name for the unit cause measurements to be returned in (optional)
///
///  @param delay The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
///
///  @param duration The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
///
///  @param effectSource Name of data source that the effectmeasurements should come from (optional)
///
///  @param effectUnit Abbreviated name for the unit effect measurements to be returned in (optional)
///
///  @param endTime The most recent date (in epoch time) for which we should return measurements (optional)
///
///  @param startTime The earliest date (in epoch time) for which we should return measurements (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns NSArray<SWGPairs>*
///
-(NSNumber*) v1PairsCsvGetWithCause: (NSString*) cause
    effect: (NSString*) effect
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
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
    completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error)) handler {
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        NSParameterAssert(cause);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cause"] };
            NSError* error = [NSError errorWithDomain:kSWGPairsApiErrorDomain code:kSWGPairsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'effect' is set
    if (effect == nil) {
        NSParameterAssert(effect);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"effect"] };
            NSError* error = [NSError errorWithDomain:kSWGPairsApiErrorDomain code:kSWGPairsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/pairsCsv"];

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
                              responseType: @"NSArray<SWGPairs>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGPairs>*)data, error);
                                }
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
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param causeSource Name of data source that the cause measurements should come from (optional)
///
///  @param causeUnit Abbreviated name for the unit cause measurements to be returned in (optional)
///
///  @param delay The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
///
///  @param duration The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
///
///  @param effectSource Name of data source that the effectmeasurements should come from (optional)
///
///  @param effectUnit Abbreviated name for the unit effect measurements to be returned in (optional)
///
///  @param endTime The most recent date (in epoch time) for which we should return measurements (optional)
///
///  @param startTime The earliest date (in epoch time) for which we should return measurements (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @returns NSArray<SWGPairs>*
///
-(NSNumber*) v1PairsGetWithCause: (NSString*) cause
    effect: (NSString*) effect
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
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
    completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error)) handler {
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        NSParameterAssert(cause);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cause"] };
            NSError* error = [NSError errorWithDomain:kSWGPairsApiErrorDomain code:kSWGPairsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'effect' is set
    if (effect == nil) {
        NSParameterAssert(effect);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"effect"] };
            NSError* error = [NSError errorWithDomain:kSWGPairsApiErrorDomain code:kSWGPairsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/pairs"];

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
                              responseType: @"NSArray<SWGPairs>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGPairs>*)data, error);
                                }
                           }
          ];
}



@end
