#import "SWGVariablesApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGVariable.h"
#import "SWGUserVariables.h"
#import "SWGVariableCategory.h"
#import "SWGVariablesNew.h"


@interface SWGVariablesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVariablesApi

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

+(SWGVariablesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGVariablesApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariablesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
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
/// Store or Update a Correlation
/// Store or Update a Correlation
///  @param cause 
///
///  @param effect 
///
///  @param correlationcoefficient 
///
///  @param vote 
///
///  @returns void
///
-(NSNumber*) correlationsPostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         correlationcoefficient: (NSString*) correlationcoefficient
         vote: (NSString*) vote
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `correlationsPost`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `correlationsPost`"];
    }
    
    // verify the required parameter 'correlationcoefficient' is set
    if (correlationcoefficient == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `correlationcoefficient` when calling `correlationsPost`"];
    }
    
    // verify the required parameter 'vote' is set
    if (vote == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `vote` when calling `correlationsPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/correlations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
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
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Get public variables
/// This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
///  @returns SWGVariable*
///
-(NSNumber*) publicVariablesGetWithCompletionBlock: 
        (void (^)(SWGVariable* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/public/variables"];

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

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
                                         responseType: @"SWGVariable*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGVariable*)data, error);
              }
          ];
}

///
/// Get top 5 PUBLIC variables with the most correlations
/// Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.<br>Supported filter parameters:<br><ul><li><b>category</b> - Category of Variable</li></ul><br>
///  @param search Search query can be some fraction of a variable name.
///
///  @param effectOrCause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns SWGVariable*
///
-(NSNumber*) publicVariablesSearchSearchGetWithCompletionBlock: (NSString*) search
         effectOrCause: (NSString*) effectOrCause
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'search' is set
    if (search == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `search` when calling `publicVariablesSearchSearchGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/public/variables/search/{search}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(effectOrCause != nil) {
        
        queryParams[@"effectOrCause"] = effectOrCause;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

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
                                         responseType: @"SWGVariable*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGVariable*)data, error);
              }
          ];
}

///
/// Update User Settings for a Variable
/// Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
///  @param sharingData Variable user settings data
///
///  @returns void
///
-(NSNumber*) v1UserVariablesPostWithCompletionBlock: (SWGUserVariables*) sharingData
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'sharingData' is set
    if (sharingData == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sharingData` when calling `v1UserVariablesPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userVariables"];

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sharingData;
    

    
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
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Variable categories
/// The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
///  @returns NSArray<SWGVariableCategory>*
///
-(NSNumber*) variableCategoriesGetWithCompletionBlock: 
        (void (^)(NSArray<SWGVariableCategory>* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variableCategories"];

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

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
                                         responseType: @"NSArray<SWGVariableCategory>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGVariableCategory>*)data, error);
              }
          ];
}

///
/// Get variables by the category name
/// Get variables by the category name. <br>Supported filter parameters:<br><ul><li><b>name</b> - Original name of the variable (supports exact name match only)</li><li><b>lastUpdated</b> - Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\"</li><li><b>source</b> - The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here</li><li><b>latestMeasurementTime</b> - Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li><li><b>numberOfMeasurements</b> - Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.</li><li><b>lastSource</b> - Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)</li></ul><br>
///  @param userId User id
///
///  @param category Filter data by category
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns SWGVariable*
///
-(NSNumber*) variablesGetWithCompletionBlock: (NSNumber*) userId
         category: (NSString*) category
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(userId != nil) {
        
        queryParams[@"userId"] = userId;
    }
    if(category != nil) {
        
        queryParams[@"category"] = category;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"basicAuth", @"oauth2"];

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
                                         responseType: @"SWGVariable*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGVariable*)data, error);
              }
          ];
}

///
/// Create Variables
/// Allows the client to create a new variable in the `variables` table.
///  @param variableName Original name for the variable.
///
///  @returns void
///
-(NSNumber*) variablesPostWithCompletionBlock: (SWGVariablesNew*) variableName
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `variablesPost`"];
    }
    

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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = variableName;
    

    
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
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Get variables by search query
/// Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
///  @param search Search query which may be an entire variable name or a fragment of one.
///
///  @param categoryName Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
///
///  @param source Specify a data source name to only return variables from a specific data source.
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @returns NSArray<SWGVariable>*
///
-(NSNumber*) variablesSearchSearchGetWithCompletionBlock: (NSString*) search
         categoryName: (NSString*) categoryName
         source: (NSString*) source
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
        
        completionHandler: (void (^)(NSArray<SWGVariable>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'search' is set
    if (search == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `search` when calling `variablesSearchSearchGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables/search/{search}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }
    

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
                                         responseType: @"NSArray<SWGVariable>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGVariable>*)data, error);
              }
          ];
}

///
/// Get info about a variable
/// Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
///  @param variableName Variable name
///
///  @returns SWGVariable*
///
-(NSNumber*) variablesVariableNameGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `variablesVariableNameGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variables/{variableName}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

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
                                         responseType: @"SWGVariable*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGVariable*)data, error);
              }
          ];
}



@end
