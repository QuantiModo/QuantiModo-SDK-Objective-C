#import "SWGUnitsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGUnitCategory.h"
#import "SWGUnit.h"


@interface SWGUnitsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGUnitsApi

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

+(SWGUnitsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGUnitsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUnitsApi alloc] init];
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
/// Get unit categories
/// Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.
///  @returns SWGUnitCategory*
///
-(NSNumber*) unitCategoriesGetWithCompletionBlock: 
        (void (^)(SWGUnitCategory* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/unitCategories", basePath];

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

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGUnitCategory*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGUnitCategory*)data, error);
              }
          ];
}

///
/// Get all available units
/// Get all available units
///  @param unitName Unit name
///
///  @param abbreviatedUnitName Restrict the results to a specific unit by providing the unit abbreviation.
///
///  @param categoryName Restrict the results to a specific unit category by providing the unit category name.
///
///  @returns NSArray<SWGUnit>*
///
-(NSNumber*) unitsGetWithCompletionBlock: (NSString*) unitName
         abbreviatedUnitName: (NSString*) abbreviatedUnitName
         categoryName: (NSString*) categoryName
        
        completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/units", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(unitName != nil) {
        
        queryParams[@"unitName"] = unitName;
    }
    if(abbreviatedUnitName != nil) {
        
        queryParams[@"abbreviatedUnitName"] = abbreviatedUnitName;
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
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGUnit>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGUnit>*)data, error);
              }
          ];
}

///
/// Units for Variable
/// Get a list of all possible units to use for a given variable
///  @param unitName Name of Unit you want to retrieve
///
///  @param abbreviatedUnitName Abbreviated Unit Name of the unit you want
///
///  @param categoryName Name of the category you want units for
///
///  @param variable Name of the variable you want units for
///
///  @returns NSArray<SWGUnit>*
///
-(NSNumber*) unitsVariableGetWithCompletionBlock: (NSString*) unitName
         abbreviatedUnitName: (NSString*) abbreviatedUnitName
         categoryName: (NSString*) categoryName
         variable: (NSString*) variable
        
        completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/unitsVariable", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(unitName != nil) {
        
        queryParams[@"unitName"] = unitName;
    }
    if(abbreviatedUnitName != nil) {
        
        queryParams[@"abbreviatedUnitName"] = abbreviatedUnitName;
    }
    if(categoryName != nil) {
        
        queryParams[@"categoryName"] = categoryName;
    }
    if(variable != nil) {
        
        queryParams[@"variable"] = variable;
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
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGUnit>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGUnit>*)data, error);
              }
          ];
}



@end
