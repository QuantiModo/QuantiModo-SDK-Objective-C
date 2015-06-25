#import "SWGCorrelationsApi.h"
#import "SWGFile.h"
#import "SWGQueryParamCollection.h"
#import "SWGCorrelation.h"
#import "SWGJsonErrorResponse.h"
#import "SWGPostCorrelation.h"


@interface SWGCorrelationsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGCorrelationsApi

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

+(SWGCorrelationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGCorrelationsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGCorrelationsApi alloc] init];
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
 * Get correlations
 * Get correlations
 * \param effect ORIGINAL variable name of the effect variable for which the user desires correlations
 * \param cause ORIGINAL variable name of the cause variable for which the user desires correlations
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) correlationsGetWithCompletionBlock: (NSString*) effect
         cause: (NSString*) cause
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/correlations", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Get average correlations for variables containing search term
 * Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
 * \param search Name of the variable that you want to know the causes or effects of.
 * \param effectOrCause Specifies whether to return the effects or causes of the searched variable.
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) publicCorrelationsSearchSearchGetWithCompletionBlock: (NSString*) search
         effectOrCause: (NSString*) effectOrCause
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'search' is set
    NSAssert(search != nil, @"Missing the required parameter `search` when calling publicCorrelationsSearchSearchGet");
    
    // verify the required parameter 'effectOrCause' is set
    NSAssert(effectOrCause != nil, @"Missing the required parameter `effectOrCause` when calling publicCorrelationsSearchSearchGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/public/correlations/search/{search}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"search", @"}"]] withString: [SWGApiClient escape:search]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(effectOrCause != nil) {
        
        queryParams[@"effectOrCause"] = effectOrCause;
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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Add correlation or/and vote for it
 * Add correlation or/and vote for it
 * \param body Provides correlation data
 * \returns void
 */
-(NSNumber*) v1CorrelationsPostWithCompletionBlock: (SWGPostCorrelation*) body
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'body' is set
    NSAssert(body != nil, @"Missing the required parameter `body` when calling v1CorrelationsPost");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/correlations", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];
    
    id bodyDictionary = nil;
    
    id __body = body;

    if(__body != nil && [__body isKindOfClass:[NSArray class]]){
        NSMutableArray * objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)__body) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SWGObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyDictionary = objs;
    }
    else if([__body respondsToSelector:@selector(toDictionary)]) {
        bodyDictionary = [(SWGObject*)__body toDictionary];
    }
    else if([__body isKindOfClass:[NSString class]]) {
        // convert it to a dictionary
        NSError * error;
        NSString * str = (NSString*)__body;
        NSDictionary *JSON =
            [NSJSONSerialization JSONObjectWithData: [str dataUsingEncoding: NSUTF8StringEncoding]
                                            options: NSJSONReadingMutableContainers
                                              error: &error];
        bodyDictionary = JSON;
    }
    
    

    

    

    

    
    // it's void
        return [self.apiClient stringWithCompletionBlock: requestUrl 
                                      method: @"POST" 
                                 queryParams: queryParams 
                                        body: bodyDictionary 
                                headerParams: headerParams
                                authSettings: authSettings
                          requestContentType: requestContentType
                         responseContentType: responseContentType
                             completionBlock: ^(NSString *data, NSError *error) {
                if (error) {
                    completionBlock(error);
                    return;
                }
                completionBlock(nil);
                    }];

    
}

/*!
 * Search user correlations for a given effect
 * Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
 * \param organizationId Organization ID
 * \param userId User id
 * \param variableName Effect variable name
 * \param organizationToken Organization access token
 * \param includePublic Include bublic correlations, Can be \"1\" or empty.
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithCompletionBlock: (NSNumber*) organizationId
         userId: (NSNumber*) userId
         variableName: (NSString*) variableName
         organizationToken: (NSString*) organizationToken
         includePublic: (NSString*) includePublic
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'organizationId' is set
    NSAssert(organizationId != nil, @"Missing the required parameter `organizationId` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet");
    
    // verify the required parameter 'userId' is set
    NSAssert(userId != nil, @"Missing the required parameter `userId` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet");
    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet");
    
    // verify the required parameter 'organizationToken' is set
    NSAssert(organizationToken != nil, @"Missing the required parameter `organizationToken` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"organizationId", @"}"]] withString: [SWGApiClient escape:organizationId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(organizationToken != nil) {
        
        queryParams[@"organization_token"] = organizationToken;
    }
    if(includePublic != nil) {
        
        queryParams[@"include_public"] = includePublic;
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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Search user correlations for a given cause
 * Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
 * \param organizationId Organization ID
 * \param userId User id
 * \param variableName Cause variable name
 * \param organizationToken Organization access token
 * \param includePublic Include bublic correlations, Can be \"1\" or empty.
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithCompletionBlock: (NSNumber*) organizationId
         userId: (NSNumber*) userId
         variableName: (NSString*) variableName
         organizationToken: (NSString*) organizationToken
         includePublic: (NSString*) includePublic
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'organizationId' is set
    NSAssert(organizationId != nil, @"Missing the required parameter `organizationId` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet");
    
    // verify the required parameter 'userId' is set
    NSAssert(userId != nil, @"Missing the required parameter `userId` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet");
    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet");
    
    // verify the required parameter 'organizationToken' is set
    NSAssert(organizationToken != nil, @"Missing the required parameter `organizationToken` when calling v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"organizationId", @"}"]] withString: [SWGApiClient escape:organizationId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"userId", @"}"]] withString: [SWGApiClient escape:userId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(organizationToken != nil) {
        
        queryParams[@"organization_token"] = organizationToken;
    }
    if(includePublic != nil) {
        
        queryParams[@"include_public"] = includePublic;
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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Search user correlations for a given effect
 * Returns average of all correlations and votes for all user cause variables for a given effect
 * \param variableName Effect variable name
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNameCausesGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1VariablesVariableNameCausesGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/variables/{variableName}/causes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Search user correlations for a given cause
 * Returns average of all correlations and votes for all user effect variables for a given cause
 * \param variableName Cause variable name
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNameEffectsGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1VariablesVariableNameEffectsGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/variables/{variableName}/effects", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Search public correlations for a given effect
 * Returns average of all correlations and votes for all public cause variables for a given effect
 * \param variableName Effect variable name
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNamePublicCausesGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1VariablesVariableNamePublicCausesGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/variables/{variableName}/public/causes", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Search public correlations for a given cause
 * Returns average of all correlations and votes for all public cause variables for a given cause
 * \param variableName Cause variable name
 * \returns NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNamePublicEffectsGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling v1VariablesVariableNamePublicEffectsGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/variables/{variableName}/public/effects", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"variableName", @"}"]] withString: [SWGApiClient escape:variableName]];
    

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
                        
                        
                        SWGCorrelation* d = [[SWGCorrelation alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGCorrelation>*)objs, nil);
                }
                
                
            }];
    


    

    
}



@end



