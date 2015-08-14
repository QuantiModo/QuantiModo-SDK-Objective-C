#import "SWGVotesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGCommonResponse.h"


@interface SWGVotesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVotesApi

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

+(SWGVotesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGVotesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVotesApi alloc] init];
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

#pragma mark - Api Methods

///
/// Post or update vote
/// This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
///  @param cause Cause variable name
///
///  @param effect Effect variable name
///
///  @param vote Vote: 0 (for implausible) or 1 (for plausible)
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesPostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         vote: (NSNumber*) vote
        
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1VotesPost`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1VotesPost`"];
    }
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/votes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if(vote != nil) {
        
        queryParams[@"vote"] = vote;
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

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGCommonResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGCommonResponse*)data, error);
              }
          ];
}

///
/// Delete vote
/// Delete previously posted vote
///  @param cause Cause variable name
///
///  @param effect Effect variable name
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesDeletePostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
        
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1VotesDeletePost`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1VotesDeletePost`"];
    }
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/votes/delete", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
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

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGCommonResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGCommonResponse*)data, error);
              }
          ];
}



@end
