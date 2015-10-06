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

static SWGMeasurementsApi* singletonAPI = nil;

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

+(SWGMeasurementsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGMeasurementsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGMeasurementsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGMeasurementsApi alloc] init];
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
/// Get measurement sources
/// Returns a list of all the apps from which measurement data is obtained.
///  @returns SWGMeasurementSource*
///
-(NSNumber*) v1MeasurementSourcesGetWithCompletionBlock: 
        (void (^)(SWGMeasurementSource* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementSources"];

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
-(NSNumber*) v1MeasurementSourcesPostWithCompletionBlock: (SWGMeasurementSource*) name
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `v1MeasurementSourcesPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementSources"];

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
    
    bodyParam = name;
    

    
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
/// Get measurements for this user
/// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
///  @param variableName Name of the variable you want measurements for
///
///  @param source Name of the source you want measurements for (supports exact name match only)
///
///  @param value Value of measurement
///
///  @param lastUpdated The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
///
///  @param unit The unit you want the measurements in
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
-(NSNumber*) v1MeasurementsGetWithCompletionBlock: (NSString*) variableName
         source: (NSString*) source
         value: (NSString*) value
         lastUpdated: (NSString*) lastUpdated
         unit: (NSString*) unit
         startTime: (NSString*) startTime
         endTime: (NSString*) endTime
         groupingWidth: (NSNumber*) groupingWidth
         groupingTimezone: (NSString*) groupingTimezone
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(SWGMeasurement* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(variableName != nil) {
        
        queryParams[@"variableName"] = variableName;
    }
    if(source != nil) {
        
        queryParams[@"source"] = source;
    }
    if(value != nil) {
        
        queryParams[@"value"] = value;
    }
    if(lastUpdated != nil) {
        
        queryParams[@"lastUpdated"] = lastUpdated;
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
                                         responseType: @"SWGMeasurement*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurement*)data, error);
              }
          ];
}

///
/// Post a new set or update existing measurements to the database
/// You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"startTime\":1439389320,\"value\":\"3\"}],\"name\":\"Acne (out of 5)\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]
///  @param measurements An array of measurements you want to insert.
///
///  @returns void
///
-(NSNumber*) v1MeasurementsPostWithCompletionBlock: (SWGMeasurementSet*) measurements
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'measurements' is set
    if (measurements == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `measurements` when calling `v1MeasurementsPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements"];

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
    
    bodyParam = measurements;
    

    
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
/// Get daily measurements for this user
/// Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
///  @param variableName Name of the variable you want measurements for
///
///  @param abbreviatedUnitName The unit your want the measurements in
///
///  @param startTime The lower limit of measurements returned (Iso8601)
///
///  @param endTime The upper limit of measurements returned (Iso8601)
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
-(NSNumber*) v1MeasurementsDailyGetWithCompletionBlock: (NSString*) variableName
         abbreviatedUnitName: (NSString*) abbreviatedUnitName
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1MeasurementsDailyGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurements/daily"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(variableName != nil) {
        
        queryParams[@"variableName"] = variableName;
    }
    if(abbreviatedUnitName != nil) {
        
        queryParams[@"abbreviatedUnitName"] = abbreviatedUnitName;
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
                                         responseType: @"SWGMeasurement*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurement*)data, error);
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
-(NSNumber*) v1MeasurementsRangeGetWithCompletionBlock: (NSString*) sources
         user: (NSNumber*) user
        
        completionHandler: (void (^)(SWGMeasurementRange* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/measurementsRange"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
                                         responseType: @"SWGMeasurementRange*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGMeasurementRange*)data, error);
              }
          ];
}



@end
