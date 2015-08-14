#import "SWGMeasurementsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGMeasurementSource.h"
#import "SWGMeasurement.h"
#import "SWGMeasurementSet.h"
#import "SWGMeasurementRange.h"


@interface SWGMeasurementsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGMeasurementsApi

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

+(SWGMeasurementsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGMeasurementsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGMeasurementsApi alloc] init];
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
/// Get measurement sources
/// Returns a list of all the apps from which measurement data is obtained.
///  @returns SWGMeasurementSource*
///
-(NSNumber*) measurementSourcesGetWithCompletionBlock: 
        (void (^)(SWGMeasurementSource* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/measurementSources", basePath];

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
                                         responseType: @"SWGMeasurementSource*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurementSource*)data, error);
              }
          ];
}

///
/// Add a data source
/// Add a life-tracking app or device to the QuantiModo list of data sources.
///  @param name An array of names of data sources you want to add.
///
///  @returns void
///
-(NSNumber*) measurementSourcesPostWithCompletionBlock: (SWGMeasurementSource*) name
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `measurementSourcesPost`"];
    }
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/measurementSources", basePath];

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
    
    bodyParam = name;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SWGObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SWGObject*)bodyParam toDictionary];
    }
    

    
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
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Get measurements for this user
/// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
///  @param variableName Name of the variable you want measurements for
///
///  @param unit The unit your want the measurements in
///
///  @param startTime The lower limit of measurements returned (Epoch)
///
///  @param endTime The upper limit of measurements returned (Epoch)
///
///  @param groupingWidth The time (in seconds) over which measurements are grouped together
///
///  @param groupingTimezone The time (in seconds) over which measurements are grouped together
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns SWGMeasurement*
///
-(NSNumber*) measurementsGetWithCompletionBlock: (NSString*) variableName
         unit: (NSString*) unit
         startTime: (NSString*) startTime
         endTime: (NSString*) endTime
         groupingWidth: (NSNumber*) groupingWidth
         groupingTimezone: (NSString*) groupingTimezone
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(SWGMeasurement* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `measurementsGet`"];
    }
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/measurements", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(variableName != nil) {
        
        queryParams[@"variableName"] = variableName;
    }
    if(unit != nil) {
        
        queryParams[@"unit"] = unit;
    }
    if(startTime != nil) {
        
        queryParams[@"startTime"] = startTime;
    }
    if(endTime != nil) {
        
        queryParams[@"endTime"] = endTime;
    }
    if(groupingWidth != nil) {
        
        queryParams[@"groupingWidth"] = groupingWidth;
    }
    if(groupingTimezone != nil) {
        
        queryParams[@"groupingTimezone"] = groupingTimezone;
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
                                         responseType: @"SWGMeasurement*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurement*)data, error);
              }
          ];
}

///
/// Post a new set or update existing measurements to the database
/// You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"timestamp\":1406419860,\"value\":\"1\",\"note\":\"I am a note about back pain.\"},{\"timestamp\":1406519865,\"value\":\"3\",\"note\":\"I am another note about back pain.\"}],\"name\":\"Back Pain\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]
///  @param measurements An array of measurements you want to insert.
///
///  @returns void
///
-(NSNumber*) measurementsV2PostWithCompletionBlock: (SWGMeasurementSet*) measurements
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'measurements' is set
    if (measurements == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `measurements` when calling `measurementsV2Post`"];
    }
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/measurements/v2", basePath];

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
    
    bodyParam = measurements;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SWGObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SWGObject*)bodyParam toDictionary];
    }
    

    
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
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Get measurements range for this user
/// Get Unix time-stamp (epoch time) of the user's first and last measurements taken.
///  @param sources Enter source name to limit to specific source (varchar)
///
///  @param user If not specified, uses currently logged in user (bigint)
///
///  @returns SWGMeasurementRange*
///
-(NSNumber*) measurementsRangeGetWithCompletionBlock: (NSString*) sources
         user: (NSNumber*) user
        
        completionHandler: (void (^)(SWGMeasurementRange* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/measurementsRange", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(sources != nil) {
        
        queryParams[@"sources"] = sources;
    }
    if(user != nil) {
        
        queryParams[@"user"] = user;
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
                                         responseType: @"SWGMeasurementRange*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurementRange*)data, error);
              }
          ];
}



@end
