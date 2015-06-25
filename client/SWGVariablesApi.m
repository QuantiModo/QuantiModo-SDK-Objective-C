#import "SWGVariablesApi.h"
#import "SWGFile.h"
#import "SWGQueryParamCollection.h"
#import "SWGVariable.h"
#import "SWGVariableCategory.h"
#import "SWGVariableUserSettings.h"
#import "SWGVariablesNew.h"


@interface SWGVariablesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVariablesApi

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

+(SWGVariablesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGVariablesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariablesApi alloc] init];
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
 * Store or Update a Correlation
 * Store or Update a Correlation
 * \param cause 
 * \param effect 
 * \param correlationcoefficient 
 * \param vote 
 * \returns void
 */
-(NSNumber*) correlationsPostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         correlationcoefficient: (NSString*) correlationcoefficient
         vote: (NSString*) vote
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'cause' is set
    NSAssert(cause != nil, @"Missing the required parameter `cause` when calling correlationsPost");
    
    // verify the required parameter 'effect' is set
    NSAssert(effect != nil, @"Missing the required parameter `effect` when calling correlationsPost");
    
    // verify the required parameter 'correlationcoefficient' is set
    NSAssert(correlationcoefficient != nil, @"Missing the required parameter `correlationcoefficient` when calling correlationsPost");
    
    // verify the required parameter 'vote' is set
    NSAssert(vote != nil, @"Missing the required parameter `vote` when calling correlationsPost");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/correlations", basePath];

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
    if(correlationcoefficient != nil) {
        
        queryParams[@"correlationcoefficient"] = correlationcoefficient;
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
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    

    
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
 * Get public variables
 * This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
 * \returns SWGVariable*
 */
-(NSNumber*) publicVariablesGetWithCompletionBlock: 
        (void (^)(SWGVariable* output, NSError* error))completionBlock
         {

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/public/variables", basePath];

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
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    
    // non container response

    

    
    // complex response
        
    // comples response type
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
                SWGVariable* result = nil;
                if (data) {
                    result = [[SWGVariable  alloc]  initWithDictionary:data error:nil];
                }
                completionBlock(result , nil);
                
              }];
    

    

    
}

/*!
 * Get top 5 PUBLIC variables with the most correlations
 * Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.
 * \param search Search query can be some fraction of a variable name.
 * \param effectOrCause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
 * \returns SWGVariable*
 */
-(NSNumber*) publicVariablesSearchSearchGetWithCompletionBlock: (NSString*) search
         effectOrCause: (NSString*) effectOrCause
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'search' is set
    NSAssert(search != nil, @"Missing the required parameter `search` when calling publicVariablesSearchSearchGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/public/variables/search/{search}", basePath];

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

    
    

    

    

    
    // non container response

    

    
    // complex response
        
    // comples response type
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
                SWGVariable* result = nil;
                if (data) {
                    result = [[SWGVariable  alloc]  initWithDictionary:data error:nil];
                }
                completionBlock(result , nil);
                
              }];
    

    

    
}

/*!
 * Get variable categories
 * The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
 * \returns NSArray<SWGVariableCategory>*
 */
-(NSNumber*) variableCategoriesGetWithCompletionBlock: 
        (void (^)(NSArray<SWGVariableCategory>* output, NSError* error))completionBlock
         {

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variableCategories", basePath];

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
                        
                        
                        SWGVariableCategory* d = [[SWGVariableCategory alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGVariableCategory>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Update User Settings for a Variable
 * Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
 * \param sharingData Variable user settings data
 * \returns void
 */
-(NSNumber*) variableUserSettingsPostWithCompletionBlock: (SWGVariableUserSettings*) sharingData
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'sharingData' is set
    NSAssert(sharingData != nil, @"Missing the required parameter `sharingData` when calling variableUserSettingsPost");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variableUserSettings", basePath];

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
    
    id __body = sharingData;

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
 * Get variables by the category name
 * Get variables by the category name
 * \param userId User id
 * \param categoryName Category name
 * \returns SWGVariable*
 */
-(NSNumber*) variablesGetWithCompletionBlock: (NSNumber*) userId
         categoryName: (NSString*) categoryName
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock
         {

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variables", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(userId != nil) {
        
        queryParams[@"userId"] = userId;
    }
    if(categoryName != nil) {
        
        queryParams[@"categoryName"] = categoryName;
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
    NSArray *authSettings = @[@"basicAuth", @"oauth2"];
    
    id bodyDictionary = nil;
    
    

    NSMutableDictionary * formParams = [[NSMutableDictionary alloc]init];

    
    

    

    

    
    // non container response

    

    
    // complex response
        
    // comples response type
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
                SWGVariable* result = nil;
                if (data) {
                    result = [[SWGVariable  alloc]  initWithDictionary:data error:nil];
                }
                completionBlock(result , nil);
                
              }];
    

    

    
}

/*!
 * Set variable
 * Allows the client to create a new variable in the `variables` table.
 * \param variableName Original name for the variable.
 * \returns void
 */
-(NSNumber*) variablesPostWithCompletionBlock: (SWGVariablesNew*) variableName
        
        
        completionHandler: (void (^)(NSError* error))completionBlock {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling variablesPost");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variables", basePath];

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
    
    id __body = variableName;

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
 * Get variables by search query
 * Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
 * \param search Search query which may be an entire variable name or a fragment of one.
 * \param categoryName Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
 * \param source Specify a data source name to only return variables from a specific data source.
 * \param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
 * \param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
 * \returns NSArray<SWGVariable>*
 */
-(NSNumber*) variablesSearchSearchGetWithCompletionBlock: (NSString*) search
         categoryName: (NSString*) categoryName
         source: (NSString*) source
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
        
        completionHandler: (void (^)(NSArray<SWGVariable>* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'search' is set
    NSAssert(search != nil, @"Missing the required parameter `search` when calling variablesSearchSearchGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variables/search/{search}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"search", @"}"]] withString: [SWGApiClient escape:search]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(categoryName != nil) {
        
        queryParams[@"categoryName"] = categoryName;
    }
    if(source != nil) {
        
        queryParams[@"source"] = source;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
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
                        
                        
                        SWGVariable* d = [[SWGVariable alloc] initWithDictionary:dict error:nil];
                        
                        [objs addObject:d];
                    }
                    completionBlock((NSArray<SWGVariable>*)objs, nil);
                }
                
                
            }];
    


    

    
}

/*!
 * Get info about a variable
 * Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
 * \param variableName Variable name
 * \returns SWGVariable*
 */
-(NSNumber*) variablesVariableNameGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock
         {

    
    // verify the required parameter 'variableName' is set
    NSAssert(variableName != nil, @"Missing the required parameter `variableName` when calling variablesVariableNameGet");
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/variables/{variableName}", basePath];

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

    
    

    

    

    
    // non container response

    

    
    // complex response
        
    // comples response type
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
                SWGVariable* result = nil;
                if (data) {
                    result = [[SWGVariable  alloc]  initWithDictionary:data error:nil];
                }
                completionBlock(result , nil);
                
              }];
    

    

    
}



@end



