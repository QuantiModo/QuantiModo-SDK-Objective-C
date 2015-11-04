#import "SWGVariableCategoryApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse20023.h"
#import "SWGInlineResponse20024.h"
#import "SWGVariableCategory.h"
#import "SWGInlineResponse2002.h"


@interface SWGVariableCategoryApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVariableCategoryApi

static SWGVariableCategoryApi* singletonAPI = nil;

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

+(SWGVariableCategoryApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariableCategoryApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGVariableCategoryApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVariableCategoryApi alloc] init];
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
/// Get all VariableCategories
/// Get all VariableCategories
///  @param name name
///
///  @param fillingValue filling_value
///
///  @param maximumAllowedValue maximum_allowed_value
///
///  @param minimumAllowedValue minimum_allowed_value
///
///  @param durationOfAction duration_of_action
///
///  @param onsetDelay onset_delay
///
///  @param combinationOperation combination_operation
///
///  @param updated updated
///
///  @param causeOnly cause_only
///
///  @param public public
///
///  @param outcome outcome
///
///  @param createdAt created_at
///
///  @param updatedAt updated_at
///
///  @param imageUrl image_url
///
///  @param defaultUnitId default_unit_id
///
///  @param limit limit
///
///  @param offset offset
///
///  @param sort sort
///
///  @returns SWGInlineResponse20023*
///
-(NSNumber*) variableCategoriesGetWithCompletionBlock: (NSString*) name
         fillingValue: (NSNumber*) fillingValue
         maximumAllowedValue: (NSNumber*) maximumAllowedValue
         minimumAllowedValue: (NSNumber*) minimumAllowedValue
         durationOfAction: (NSNumber*) durationOfAction
         onsetDelay: (NSNumber*) onsetDelay
         combinationOperation: (NSString*) combinationOperation
         updated: (NSNumber*) updated
         causeOnly: (NSNumber*) causeOnly
         public: (NSNumber*) public
         outcome: (NSNumber*) outcome
         createdAt: (NSString*) createdAt
         updatedAt: (NSString*) updatedAt
         imageUrl: (NSString*) imageUrl
         defaultUnitId: (NSNumber*) defaultUnitId
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSString*) sort
        
        completionHandler: (void (^)(SWGInlineResponse20023* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variableCategories"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(name != nil) {
        
        queryParams[@"name"] = name;
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
    if(durationOfAction != nil) {
        
        queryParams[@"duration_of_action"] = durationOfAction;
    }
    if(onsetDelay != nil) {
        
        queryParams[@"onset_delay"] = onsetDelay;
    }
    if(combinationOperation != nil) {
        
        queryParams[@"combination_operation"] = combinationOperation;
    }
    if(updated != nil) {
        
        queryParams[@"updated"] = updated;
    }
    if(causeOnly != nil) {
        
        queryParams[@"cause_only"] = causeOnly;
    }
    if(public != nil) {
        
        queryParams[@"public"] = public;
    }
    if(outcome != nil) {
        
        queryParams[@"outcome"] = outcome;
    }
    if(createdAt != nil) {
        
        queryParams[@"created_at"] = createdAt;
    }
    if(updatedAt != nil) {
        
        queryParams[@"updated_at"] = updatedAt;
    }
    if(imageUrl != nil) {
        
        queryParams[@"image_url"] = imageUrl;
    }
    if(defaultUnitId != nil) {
        
        queryParams[@"default_unit_id"] = defaultUnitId;
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
                                         responseType: @"SWGInlineResponse20023*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20023*)data, error);
              }
          ];
}

///
/// Store VariableCategory
/// Store VariableCategory
///  @param body VariableCategory that should be stored
///
///  @returns SWGInlineResponse20024*
///
-(NSNumber*) variableCategoriesPostWithCompletionBlock: (SWGVariableCategory*) body
        
        completionHandler: (void (^)(SWGInlineResponse20024* output, NSError* error))completionBlock { 
        

    

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
                                         responseType: @"SWGInlineResponse20024*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20024*)data, error);
              }
          ];
}

///
/// Get VariableCategory
/// Get VariableCategory
///  @param _id id of VariableCategory
///
///  @returns SWGInlineResponse20024*
///
-(NSNumber*) variableCategoriesIdGetWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse20024* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variableCategoriesIdGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variableCategories/{id}"];

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
                                         responseType: @"SWGInlineResponse20024*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGInlineResponse20024*)data, error);
              }
          ];
}

///
/// Update VariableCategory
/// Update VariableCategory
///  @param _id id of VariableCategory
///
///  @param body VariableCategory that should be updated
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) variableCategoriesIdPutWithCompletionBlock: (NSNumber*) _id
         body: (SWGVariableCategory*) body
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variableCategoriesIdPut`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variableCategories/{id}"];

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
/// Delete VariableCategory
/// Delete VariableCategory
///  @param _id id of VariableCategory
///
///  @returns SWGInlineResponse2002*
///
-(NSNumber*) variableCategoriesIdDeleteWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `variableCategoriesIdDelete`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/variableCategories/{id}"];

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
