#import "SWGPairsApi.h"
#import "SWGFile.h"
#import "SWGQueryParamCollection.h"
#import "SWGPairs.h"


@interface SWGPairsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGPairsApi

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

+(SWGPairsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGPairsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGPairsApi alloc] init];
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
 * Get pairs
 * Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
 * \param cause Original variable name for the explanatory or independent variable
 * \param causeSource Name of data source that the cause measurements should come from
 * \param causeUnit Abbreviated name for the unit cause measurements to be returned in
 * \param delay Delay before onset of action (in seconds) from the cause variable settings.
 * \param duration Duration of action (in seconds) from the cause variable settings.
 * \param effect Original variable name for the outcome or dependent variable
 * \param effectSource Name of data source that the effectmeasurements should come from
 * \param effectUnit Abbreviated name for the unit effect measurements to be returned in
 * \param endTime The most recent date (in epoch time) for which we should return measurements
 * \param startTime The earliest date (in epoch time) for which we should return measurements
 * \returns NSArray<SWGPairs>*
 */
-(NSNumber*) pairsGetWithCompletionBlock: (NSString*) cause
         causeSource: (NSString*) causeSource
         causeUnit: (NSString*) causeUnit
         delay: (NSString*) delay
         duration: (NSString*) duration
         effect: (NSString*) effect
         effectSource: (NSString*) effectSource
         effectUnit: (NSString*) effectUnit
         endTime: (NSString*) endTime
         startTime: (NSString*) startTime
        
        completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'cause' is set
    NSAssert(cause != nil, @"Missing the required parameter `cause` when calling pairsGet");
    
    // verify the required parameter 'effect' is set
    NSAssert(effect != nil, @"Missing the required parameter `effect` when calling pairsGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/pairs", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(causeSource != nil) {
        
        queryParams[@"causeSource"] = causeSource;
    }
    if(causeUnit != nil) {
        
        queryParams[@"causeUnit"] = causeUnit;
    }
    if(delay != nil) {
        
        queryParams[@"delay"] = delay;
    }
    if(duration != nil) {
        
        queryParams[@"duration"] = duration;
    }
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if(effectSource != nil) {
        
        queryParams[@"effectSource"] = effectSource;
    }
    if(effectUnit != nil) {
        
        queryParams[@"effectUnit"] = effectUnit;
    }
    if(endTime != nil) {
        
        queryParams[@"endTime"] = endTime;
    }
    if(startTime != nil) {
        
        queryParams[@"startTime"] = startTime;
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
                        
                        
                        SWGPairs* d = [[SWGPairs alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGPairs>*)objs, nil);
                }
                
                
            }];
    


    

    
}



@end



