# SWGPairsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PairsCsvGet**](SWGPairsApi.md#v1pairscsvget) | **GET** /v1/pairsCsv | Get pairs
[**v1PairsGet**](SWGPairsApi.md#v1pairsget) | **GET** /v1/pairs | Get pairs


# **v1PairsCsvGet**
```objc
-(NSNumber*) v1PairsCsvGetWithCause: (NSString*) cause
    effect: (NSString*) effect
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    causeSource: (NSString*) causeSource
    causeUnit: (NSString*) causeUnit
    delay: (NSString*) delay
    duration: (NSString*) duration
    effectSource: (NSString*) effectSource
    effectUnit: (NSString*) effectUnit
    endTime: (NSString*) endTime
    startTime: (NSString*) startTime
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error)) handler;
```

Get pairs

Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cause = @"cause_example"; // Original variable name for the explanatory or independent variable
NSString* effect = @"effect_example"; // Original variable name for the outcome or dependent variable
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* causeSource = @"causeSource_example"; // Name of data source that the cause measurements should come from (optional)
NSString* causeUnit = @"causeUnit_example"; // Abbreviated name for the unit cause measurements to be returned in (optional)
NSString* delay = @"delay_example"; // The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
NSString* duration = @"duration_example"; // The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
NSString* effectSource = @"effectSource_example"; // Name of data source that the effectmeasurements should come from (optional)
NSString* effectUnit = @"effectUnit_example"; // Abbreviated name for the unit effect measurements to be returned in (optional)
NSString* endTime = @"endTime_example"; // The most recent date (in epoch time) for which we should return measurements (optional)
NSString* startTime = @"startTime_example"; // The earliest date (in epoch time) for which we should return measurements (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGPairsApi*apiInstance = [[SWGPairsApi alloc] init];

// Get pairs
[apiInstance v1PairsCsvGetWithCause:cause
              effect:effect
              accessToken:accessToken
              userId:userId
              causeSource:causeSource
              causeUnit:causeUnit
              delay:delay
              duration:duration
              effectSource:effectSource
              effectUnit:effectUnit
              endTime:endTime
              startTime:startTime
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(NSArray<SWGPairs>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPairsApi->v1PairsCsvGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cause** | **NSString***| Original variable name for the explanatory or independent variable | 
 **effect** | **NSString***| Original variable name for the outcome or dependent variable | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **causeSource** | **NSString***| Name of data source that the cause measurements should come from | [optional] 
 **causeUnit** | **NSString***| Abbreviated name for the unit cause measurements to be returned in | [optional] 
 **delay** | **NSString***| The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | [optional] 
 **duration** | **NSString***| The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | [optional] 
 **effectSource** | **NSString***| Name of data source that the effectmeasurements should come from | [optional] 
 **effectUnit** | **NSString***| Abbreviated name for the unit effect measurements to be returned in | [optional] 
 **endTime** | **NSString***| The most recent date (in epoch time) for which we should return measurements | [optional] 
 **startTime** | **NSString***| The earliest date (in epoch time) for which we should return measurements | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**NSArray<SWGPairs>***](SWGPairs.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PairsGet**
```objc
-(NSNumber*) v1PairsGetWithCause: (NSString*) cause
    effect: (NSString*) effect
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    causeSource: (NSString*) causeSource
    causeUnit: (NSString*) causeUnit
    delay: (NSString*) delay
    duration: (NSString*) duration
    effectSource: (NSString*) effectSource
    effectUnit: (NSString*) effectUnit
    endTime: (NSString*) endTime
    startTime: (NSString*) startTime
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(NSArray<SWGPairs>* output, NSError* error)) handler;
```

Get pairs

Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cause = @"cause_example"; // Original variable name for the explanatory or independent variable
NSString* effect = @"effect_example"; // Original variable name for the outcome or dependent variable
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* causeSource = @"causeSource_example"; // Name of data source that the cause measurements should come from (optional)
NSString* causeUnit = @"causeUnit_example"; // Abbreviated name for the unit cause measurements to be returned in (optional)
NSString* delay = @"delay_example"; // The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
NSString* duration = @"duration_example"; // The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
NSString* effectSource = @"effectSource_example"; // Name of data source that the effectmeasurements should come from (optional)
NSString* effectUnit = @"effectUnit_example"; // Abbreviated name for the unit effect measurements to be returned in (optional)
NSString* endTime = @"endTime_example"; // The most recent date (in epoch time) for which we should return measurements (optional)
NSString* startTime = @"startTime_example"; // The earliest date (in epoch time) for which we should return measurements (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGPairsApi*apiInstance = [[SWGPairsApi alloc] init];

// Get pairs
[apiInstance v1PairsGetWithCause:cause
              effect:effect
              accessToken:accessToken
              userId:userId
              causeSource:causeSource
              causeUnit:causeUnit
              delay:delay
              duration:duration
              effectSource:effectSource
              effectUnit:effectUnit
              endTime:endTime
              startTime:startTime
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(NSArray<SWGPairs>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPairsApi->v1PairsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cause** | **NSString***| Original variable name for the explanatory or independent variable | 
 **effect** | **NSString***| Original variable name for the outcome or dependent variable | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **causeSource** | **NSString***| Name of data source that the cause measurements should come from | [optional] 
 **causeUnit** | **NSString***| Abbreviated name for the unit cause measurements to be returned in | [optional] 
 **delay** | **NSString***| The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | [optional] 
 **duration** | **NSString***| The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | [optional] 
 **effectSource** | **NSString***| Name of data source that the effectmeasurements should come from | [optional] 
 **effectUnit** | **NSString***| Abbreviated name for the unit effect measurements to be returned in | [optional] 
 **endTime** | **NSString***| The most recent date (in epoch time) for which we should return measurements | [optional] 
 **startTime** | **NSString***| The earliest date (in epoch time) for which we should return measurements | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**NSArray<SWGPairs>***](SWGPairs.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

