# SWGMeasurementsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MeasurementSourcesGet**](SWGMeasurementsApi.md#v1measurementsourcesget) | **GET** /v1/measurementSources | Get measurement sources
[**v1MeasurementSourcesPost**](SWGMeasurementsApi.md#v1measurementsourcespost) | **POST** /v1/measurementSources | Add a data source
[**v1MeasurementsDailyGet**](SWGMeasurementsApi.md#v1measurementsdailyget) | **GET** /v1/measurements/daily | Get daily measurements for this user
[**v1MeasurementsDeletePost**](SWGMeasurementsApi.md#v1measurementsdeletepost) | **POST** /v1/measurements/delete | Delete a measurement
[**v1MeasurementsGet**](SWGMeasurementsApi.md#v1measurementsget) | **GET** /v1/measurements | Get measurements for this user
[**v1MeasurementsPost**](SWGMeasurementsApi.md#v1measurementspost) | **POST** /v1/measurements | Post a new set or update existing measurements to the database
[**v1MeasurementsRangeGet**](SWGMeasurementsApi.md#v1measurementsrangeget) | **GET** /v1/measurementsRange | Get measurements range for this user
[**v1MeasurementsUpdatePost**](SWGMeasurementsApi.md#v1measurementsupdatepost) | **POST** /v1/measurements/update | Update a measurement
[**v2MeasurementsCsvGet**](SWGMeasurementsApi.md#v2measurementscsvget) | **GET** /v2/measurements/csv | Get Measurements CSV
[**v2MeasurementsRequestCsvPost**](SWGMeasurementsApi.md#v2measurementsrequestcsvpost) | **POST** /v2/measurements/request_csv | Post Request for Measurements CSV
[**v2MeasurementsRequestPdfPost**](SWGMeasurementsApi.md#v2measurementsrequestpdfpost) | **POST** /v2/measurements/request_pdf | Post Request for Measurements PDF
[**v2MeasurementsRequestXlsPost**](SWGMeasurementsApi.md#v2measurementsrequestxlspost) | **POST** /v2/measurements/request_xls | Post Request for Measurements XLS


# **v1MeasurementSourcesGet**
```objc
-(NSNumber*) v1MeasurementSourcesGetWithCompletionHandler: 
        (void (^)(SWGMeasurementSource* output, NSError* error)) handler;
```

Get measurement sources

Returns a list of all the apps from which measurement data is obtained.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Get measurement sources
[apiInstance v1MeasurementSourcesGetWithCompletionHandler: 
          ^(SWGMeasurementSource* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementSourcesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGMeasurementSource***](SWGMeasurementSource.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementSourcesPost**
```objc
-(NSNumber*) v1MeasurementSourcesPostWithBody: (SWGMeasurementSource*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Add a data source

Add a life-tracking app or device to the QuantiModo list of data sources.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGMeasurementSource* body = [[SWGMeasurementSource alloc] init]; // An array of names of data sources you want to add.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Add a data source
[apiInstance v1MeasurementSourcesPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementSourcesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGMeasurementSource***](SWGMeasurementSource*.md)| An array of names of data sources you want to add. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsDailyGet**
```objc
-(NSNumber*) v1MeasurementsDailyGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    startTime: (NSString*) startTime
    endTime: (NSString*) endTime
    groupingWidth: (NSNumber*) groupingWidth
    groupingTimezone: (NSString*) groupingTimezone
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(SWGMeasurement* output, NSError* error)) handler;
```

Get daily measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Name of the variable you want measurements for
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* unitAbbreviatedName = @"unitAbbreviatedName_example"; // The unit your want the measurements in (optional)
NSString* startTime = @"startTime_example"; // The lower limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format) (optional)
NSString* endTime = @"endTime_example"; // The upper limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format) (optional)
NSNumber* groupingWidth = @56; // The time (in seconds) over which measurements are grouped together (optional)
NSString* groupingTimezone = @"groupingTimezone_example"; // The time (in seconds) over which measurements are grouped together (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Get daily measurements for this user
[apiInstance v1MeasurementsDailyGetWithVariableName:variableName
              accessToken:accessToken
              userId:userId
              unitAbbreviatedName:unitAbbreviatedName
              startTime:startTime
              endTime:endTime
              groupingWidth:groupingWidth
              groupingTimezone:groupingTimezone
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGMeasurement* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsDailyGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Name of the variable you want measurements for | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **unitAbbreviatedName** | **NSString***| The unit your want the measurements in | [optional] 
 **startTime** | **NSString***| The lower limit of measurements returned (UTC Iso8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; format) | [optional] 
 **endTime** | **NSString***| The upper limit of measurements returned (UTC Iso8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; format) | [optional] 
 **groupingWidth** | **NSNumber***| The time (in seconds) over which measurements are grouped together | [optional] 
 **groupingTimezone** | **NSString***| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**SWGMeasurement***](SWGMeasurement.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsDeletePost**
```objc
-(NSNumber*) v1MeasurementsDeletePostWithBody: (SWGMeasurementDelete*) body
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Delete a measurement

Delete a previously submitted measurement

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGMeasurementDelete* body = [[SWGMeasurementDelete alloc] init]; // The startTime and variableId of the measurement to be deleted.

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Delete a measurement
[apiInstance v1MeasurementsDeletePostWithBody:body
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsDeletePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGMeasurementDelete***](SWGMeasurementDelete*.md)| The startTime and variableId of the measurement to be deleted. | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsGet**
```objc
-(NSNumber*) v1MeasurementsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    variableName: (NSString*) variableName
    variableCategoryName: (NSString*) variableCategoryName
    sourceName: (NSString*) sourceName
    value: (NSString*) value
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    earliestMeasurementTime: (NSString*) earliestMeasurementTime
    latestMeasurementTime: (NSString*) latestMeasurementTime
    createdAt: (NSString*) createdAt
    updatedAt: (NSString*) updatedAt
    groupingWidth: (NSNumber*) groupingWidth
    groupingTimezone: (NSString*) groupingTimezone
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(SWGMeasurement* output, NSError* error)) handler;
```

Get measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSNumber* _id = @56; // Measurement id (optional)
NSString* variableName = @"variableName_example"; // Name of the variable you want measurements for (optional)
NSString* variableCategoryName = @"variableCategoryName_example"; // Name of the variable category you want measurements for (optional)
NSString* sourceName = @"sourceName_example"; // ID of the source you want measurements for (supports exact name match only) (optional)
NSString* value = @"value_example"; // Value of measurement (optional)
NSString* unitAbbreviatedName = @"unitAbbreviatedName_example"; // The unit you want the measurements returned in (optional)
NSString* earliestMeasurementTime = @"earliestMeasurementTime_example"; // The lower limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) (optional)
NSString* latestMeasurementTime = @"latestMeasurementTime_example"; // The upper limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) (optional)
NSString* createdAt = @"createdAt_example"; // The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
NSString* updatedAt = @"updatedAt_example"; // The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. (optional)
NSNumber* groupingWidth = @56; // The time (in seconds) over which measurements are grouped together (optional)
NSString* groupingTimezone = @"groupingTimezone_example"; // The time (in seconds) over which measurements are grouped together (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Get measurements for this user
[apiInstance v1MeasurementsGetWithAccessToken:accessToken
              userId:userId
              _id:_id
              variableName:variableName
              variableCategoryName:variableCategoryName
              sourceName:sourceName
              value:value
              unitAbbreviatedName:unitAbbreviatedName
              earliestMeasurementTime:earliestMeasurementTime
              latestMeasurementTime:latestMeasurementTime
              createdAt:createdAt
              updatedAt:updatedAt
              groupingWidth:groupingWidth
              groupingTimezone:groupingTimezone
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGMeasurement* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **_id** | **NSNumber***| Measurement id | [optional] 
 **variableName** | **NSString***| Name of the variable you want measurements for | [optional] 
 **variableCategoryName** | **NSString***| Name of the variable category you want measurements for | [optional] 
 **sourceName** | **NSString***| ID of the source you want measurements for (supports exact name match only) | [optional] 
 **value** | **NSString***| Value of measurement | [optional] 
 **unitAbbreviatedName** | **NSString***| The unit you want the measurements returned in | [optional] 
 **earliestMeasurementTime** | **NSString***| The lower limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) | [optional] 
 **latestMeasurementTime** | **NSString***| The upper limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) | [optional] 
 **createdAt** | **NSString***| The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **updatedAt** | **NSString***| The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **groupingWidth** | **NSNumber***| The time (in seconds) over which measurements are grouped together | [optional] 
 **groupingTimezone** | **NSString***| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**SWGMeasurement***](SWGMeasurement.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsPost**
```objc
-(NSNumber*) v1MeasurementsPostWithBody: (SWGMeasurementSet*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Post a new set or update existing measurements to the database

You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"startTime\":1439389320,\"value\":\"3\"}, {\"startTime\":1439389319,\"value\":\"2\"}],\"name\":\"Acne (out of 5)\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGMeasurementSet* body = [[SWGMeasurementSet alloc] init]; // An array of measurements you want to insert.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Post a new set or update existing measurements to the database
[apiInstance v1MeasurementsPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGMeasurementSet***](SWGMeasurementSet*.md)| An array of measurements you want to insert. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsRangeGet**
```objc
-(NSNumber*) v1MeasurementsRangeGetWithSources: (NSString*) sources
    user: (NSNumber*) user
        completionHandler: (void (^)(SWGMeasurementRange* output, NSError* error)) handler;
```

Get measurements range for this user

Get Unix time-stamp (epoch time) of the user's first and last measurements taken.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sources = @"sources_example"; // Enter source name to limit to specific source (varchar) (optional)
NSNumber* user = @56; // If not specified, uses currently logged in user (bigint) (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Get measurements range for this user
[apiInstance v1MeasurementsRangeGetWithSources:sources
              user:user
          completionHandler: ^(SWGMeasurementRange* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsRangeGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sources** | **NSString***| Enter source name to limit to specific source (varchar) | [optional] 
 **user** | **NSNumber***| If not specified, uses currently logged in user (bigint) | [optional] 

### Return type

[**SWGMeasurementRange***](SWGMeasurementRange.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MeasurementsUpdatePost**
```objc
-(NSNumber*) v1MeasurementsUpdatePostWithBody: (SWGMeasurementUpdate*) body
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Update a measurement

Delete a previously submitted measurement

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGMeasurementUpdate* body = [[SWGMeasurementUpdate alloc] init]; // The id as well as the new startTime, note, and/or value of the measurement to be updated

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Update a measurement
[apiInstance v1MeasurementsUpdatePostWithBody:body
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v1MeasurementsUpdatePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGMeasurementUpdate***](SWGMeasurementUpdate*.md)| The id as well as the new startTime, note, and/or value of the measurement to be updated | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2MeasurementsCsvGet**
```objc
-(NSNumber*) v2MeasurementsCsvGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Get Measurements CSV

Download a CSV containing all user measurements

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Get Measurements CSV
[apiInstance v2MeasurementsCsvGetWithAccessToken:accessToken
              userId:userId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v2MeasurementsCsvGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

**NSURL***

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2MeasurementsRequestCsvPost**
```objc
-(NSNumber*) v2MeasurementsRequestCsvPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Post Request for Measurements CSV

Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Post Request for Measurements CSV
[apiInstance v2MeasurementsRequestCsvPostWithAccessToken:accessToken
              userId:userId
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v2MeasurementsRequestCsvPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

**NSNumber***

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2MeasurementsRequestPdfPost**
```objc
-(NSNumber*) v2MeasurementsRequestPdfPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Post Request for Measurements PDF

Use this endpoint to schedule a PDF export containing all user measurements to be emailed to the user within 24 hours.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Post Request for Measurements PDF
[apiInstance v2MeasurementsRequestPdfPostWithAccessToken:accessToken
              userId:userId
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v2MeasurementsRequestPdfPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

**NSNumber***

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2MeasurementsRequestXlsPost**
```objc
-(NSNumber*) v2MeasurementsRequestXlsPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Post Request for Measurements XLS

Use this endpoint to schedule a XLS export containing all user measurements to be emailed to the user within 24 hours.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGMeasurementsApi*apiInstance = [[SWGMeasurementsApi alloc] init];

// Post Request for Measurements XLS
[apiInstance v2MeasurementsRequestXlsPostWithAccessToken:accessToken
              userId:userId
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMeasurementsApi->v2MeasurementsRequestXlsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

**NSNumber***

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

