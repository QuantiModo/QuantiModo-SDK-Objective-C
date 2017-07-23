#import "SWGUnitsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGUnit.h"
#import "SWGUnitCategory.h"


@interface SWGUnitsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGUnitsApi

NSString* kSWGUnitsApiErrorDomain = @"SWGUnitsApiErrorDomain";
NSInteger kSWGUnitsApiMissingParamErrorCode = 234513;

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
    static SWGUnitsApi *sharedAPI;
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
/// Get unit categories
/// Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.
///  @returns SWGUnitCategory*
///
-(NSNumber*) v1UnitCategoriesGetWithCompletionHandler: 
    (void (^)(SWGUnitCategory* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/unitCategories"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"SWGUnitCategory*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGUnitCategory*)data, error);
                                }
                           }
          ];
}

///
/// Get all available units
/// Get all available units
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param _id Unit id (optional)
///
///  @param unitName Unit name (optional)
///
///  @param unitAbbreviatedName Restrict the results to a specific unit by providing the unit abbreviation. (optional)
///
///  @param unitCategoryName Restrict the results to a specific unit category by providing the unit category name. (optional)
///
///  @returns NSArray<SWGUnit>*
///
-(NSNumber*) v1UnitsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
    completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/units"];

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
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (unitName != nil) {
        queryParams[@"unitName"] = unitName;
    }
    if (unitAbbreviatedName != nil) {
        queryParams[@"unitAbbreviatedName"] = unitAbbreviatedName;
    }
    if (unitCategoryName != nil) {
        queryParams[@"unitCategoryName"] = unitCategoryName;
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
                              responseType: @"NSArray<SWGUnit>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGUnit>*)data, error);
                                }
                           }
          ];
}

///
/// Units for Variable
/// Get a list of all possible units to use for a given variable
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param unitName Name of Unit you want to retrieve (optional)
///
///  @param unitAbbreviatedName Abbreviated Unit Name of the unit you want (optional)
///
///  @param unitCategoryName Name of the category you want units for (optional)
///
///  @param variable Name of the variable you want units for (optional)
///
///  @returns NSArray<SWGUnit>*
///
-(NSNumber*) v1UnitsVariableGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
    variable: (NSString*) variable
    completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/unitsVariable"];

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
    if (unitName != nil) {
        queryParams[@"unitName"] = unitName;
    }
    if (unitAbbreviatedName != nil) {
        queryParams[@"unitAbbreviatedName"] = unitAbbreviatedName;
    }
    if (unitCategoryName != nil) {
        queryParams[@"unitCategoryName"] = unitCategoryName;
    }
    if (variable != nil) {
        queryParams[@"variable"] = variable;
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
                              responseType: @"NSArray<SWGUnit>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGUnit>*)data, error);
                                }
                           }
          ];
}



@end
