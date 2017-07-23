# SWGVariablesApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1PublicVariablesGet**](SWGVariablesApi.md#v1publicvariablesget) | **GET** /v1/public/variables | Get public variables
[**v1PublicVariablesSearchSearchGet**](SWGVariablesApi.md#v1publicvariablessearchsearchget) | **GET** /v1/public/variables/search/{search} | Get top 5 PUBLIC variables with the most correlations
[**v1UserVariablesDeletePost**](SWGVariablesApi.md#v1uservariablesdeletepost) | **POST** /v1/userVariables/delete | Delete All Measurements For Variable
[**v1UserVariablesPost**](SWGVariablesApi.md#v1uservariablespost) | **POST** /v1/userVariables | Update User Settings for a Variable
[**v1UserVariablesResetPost**](SWGVariablesApi.md#v1uservariablesresetpost) | **POST** /v1/userVariables/reset | Reset user settings for a variable to defaults
[**v1VariableCategoriesGet**](SWGVariablesApi.md#v1variablecategoriesget) | **GET** /v1/variableCategories | Variable categories
[**v1VariablesGet**](SWGVariablesApi.md#v1variablesget) | **GET** /v1/variables | Get variables with user&#39;s settings
[**v1VariablesPost**](SWGVariablesApi.md#v1variablespost) | **POST** /v1/variables | Create Variables
[**v1VariablesSearchSearchGet**](SWGVariablesApi.md#v1variablessearchsearchget) | **GET** /v1/variables/search/{search} | Get variables by search query
[**v1VariablesVariableNameGet**](SWGVariablesApi.md#v1variablesvariablenameget) | **GET** /v1/variables/{variableName} | Get info about a variable


# **v1PublicVariablesGet**
```objc
-(NSNumber*) v1PublicVariablesGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    category: (NSString*) category
    name: (NSString*) name
    updatedAt: (NSString*) updatedAt
    source: (NSString*) source
    latestMeasurementTime: (NSString*) latestMeasurementTime
    numberOfRawMeasurements: (NSString*) numberOfRawMeasurements
    lastSource: (NSString*) lastSource
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler;
```

Get public variables

This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.

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
NSNumber* _id = @56; // Common variable id (optional)
NSString* category = @"category_example"; // Filter data by category (optional)
NSString* name = @"name_example"; // Original name of the variable (supports exact name match only) (optional)
NSString* updatedAt = @"updatedAt_example"; // Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
NSString* source = @"source_example"; // The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here (optional)
NSString* latestMeasurementTime = @"latestMeasurementTime_example"; // Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
NSString* numberOfRawMeasurements = @"numberOfRawMeasurements_example"; // Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. (optional)
NSString* lastSource = @"lastSource_example"; // Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Get public variables
[apiInstance v1PublicVariablesGetWithAccessToken:accessToken
              userId:userId
              _id:_id
              category:category
              name:name
              updatedAt:updatedAt
              source:source
              latestMeasurementTime:latestMeasurementTime
              numberOfRawMeasurements:numberOfRawMeasurements
              lastSource:lastSource
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1PublicVariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **_id** | **NSNumber***| Common variable id | [optional] 
 **category** | **NSString***| Filter data by category | [optional] 
 **name** | **NSString***| Original name of the variable (supports exact name match only) | [optional] 
 **updatedAt** | **NSString***| Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **source** | **NSString***| The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here | [optional] 
 **latestMeasurementTime** | **NSString***| Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **numberOfRawMeasurements** | **NSString***| Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. | [optional] 
 **lastSource** | **NSString***| Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**SWGVariable***](SWGVariable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PublicVariablesSearchSearchGet**
```objc
-(NSNumber*) v1PublicVariablesSearchSearchGetWithSearch: (NSString*) search
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    source: (NSString*) source
    effectOrCause: (NSString*) effectOrCause
    publicEffectOrCause: (NSString*) publicEffectOrCause
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler;
```

Get top 5 PUBLIC variables with the most correlations

Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.Supported filter parameters:<ul><li><b>category</b> - Category of Variable</li></ul>

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* search = @"search_example"; // Search query can be some fraction of a variable name.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* variableCategoryName = @"variableCategoryName_example"; // Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (optional)
NSString* source = @"source_example"; // Specify a data source name to only return variables from a specific data source. (optional)
NSString* effectOrCause = @"effectOrCause_example"; // Indicate if you only want variables that have user correlations. Possible values are effect and cause. (optional)
NSString* publicEffectOrCause = @"publicEffectOrCause_example"; // Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Get top 5 PUBLIC variables with the most correlations
[apiInstance v1PublicVariablesSearchSearchGetWithSearch:search
              accessToken:accessToken
              userId:userId
              variableCategoryName:variableCategoryName
              source:source
              effectOrCause:effectOrCause
              publicEffectOrCause:publicEffectOrCause
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1PublicVariablesSearchSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **NSString***| Search query can be some fraction of a variable name. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **variableCategoryName** | **NSString***| Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. | [optional] 
 **source** | **NSString***| Specify a data source name to only return variables from a specific data source. | [optional] 
 **effectOrCause** | **NSString***| Indicate if you only want variables that have user correlations. Possible values are effect and cause. | [optional] 
 **publicEffectOrCause** | **NSString***| Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**SWGVariable***](SWGVariable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserVariablesDeletePost**
```objc
-(NSNumber*) v1UserVariablesDeletePostWithVariableId: (SWGUserVariableDelete*) variableId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete All Measurements For Variable

Users can delete all of their measurements for a variable

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGUserVariableDelete* variableId = [[SWGUserVariableDelete alloc] init]; // Id of the variable whose measurements should be deleted

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Delete All Measurements For Variable
[apiInstance v1UserVariablesDeletePostWithVariableId:variableId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1UserVariablesDeletePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableId** | [**SWGUserVariableDelete***](SWGUserVariableDelete*.md)| Id of the variable whose measurements should be deleted | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserVariablesPost**
```objc
-(NSNumber*) v1UserVariablesPostWithUserVariables: (SWGUserVariables*) userVariables
        completionHandler: (void (^)(NSError* error)) handler;
```

Update User Settings for a Variable

Users can change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGUserVariables* userVariables = [[SWGUserVariables alloc] init]; // Variable user settings data

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Update User Settings for a Variable
[apiInstance v1UserVariablesPostWithUserVariables:userVariables
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1UserVariablesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userVariables** | [**SWGUserVariables***](SWGUserVariables*.md)| Variable user settings data | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserVariablesResetPost**
```objc
-(NSNumber*) v1UserVariablesResetPostWithVariableId: (SWGUserVariableDelete*) variableId
        completionHandler: (void (^)(NSError* error)) handler;
```

Reset user settings for a variable to defaults

Reset user settings for a variable to defaults

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGUserVariableDelete* variableId = [[SWGUserVariableDelete alloc] init]; // Id of the variable that should be reset

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Reset user settings for a variable to defaults
[apiInstance v1UserVariablesResetPostWithVariableId:variableId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1UserVariablesResetPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableId** | [**SWGUserVariableDelete***](SWGUserVariableDelete*.md)| Id of the variable that should be reset | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariableCategoriesGet**
```objc
-(NSNumber*) v1VariableCategoriesGetWithCompletionHandler: 
        (void (^)(NSArray<SWGVariableCategory>* output, NSError* error)) handler;
```

Variable categories

The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Variable categories
[apiInstance v1VariableCategoriesGetWithCompletionHandler: 
          ^(NSArray<SWGVariableCategory>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1VariableCategoriesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGVariableCategory>***](SWGVariableCategory.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesGet**
```objc
-(NSNumber*) v1VariablesGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    category: (NSString*) category
    name: (NSString*) name
    updatedAt: (NSString*) updatedAt
    source: (NSString*) source
    latestMeasurementTime: (NSString*) latestMeasurementTime
    numberOfRawMeasurements: (NSString*) numberOfRawMeasurements
    lastSource: (NSString*) lastSource
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
        completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler;
```

Get variables with user's settings

Get variables for which the user has measurements. If the user has specified variable settings, these are provided instead of the common variable defaults.

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
NSNumber* _id = @56; // Common variable id (optional)
NSString* category = @"category_example"; // Filter data by category (optional)
NSString* name = @"name_example"; // Original name of the variable (supports exact name match only) (optional)
NSString* updatedAt = @"updatedAt_example"; // Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
NSString* source = @"source_example"; // The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here (optional)
NSString* latestMeasurementTime = @"latestMeasurementTime_example"; // Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\" (optional)
NSString* numberOfRawMeasurements = @"numberOfRawMeasurements_example"; // Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. (optional)
NSString* lastSource = @"lastSource_example"; // Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Get variables with user's settings
[apiInstance v1VariablesGetWithAccessToken:accessToken
              userId:userId
              _id:_id
              category:category
              name:name
              updatedAt:updatedAt
              source:source
              latestMeasurementTime:latestMeasurementTime
              numberOfRawMeasurements:numberOfRawMeasurements
              lastSource:lastSource
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1VariablesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **_id** | **NSNumber***| Common variable id | [optional] 
 **category** | **NSString***| Filter data by category | [optional] 
 **name** | **NSString***| Original name of the variable (supports exact name match only) | [optional] 
 **updatedAt** | **NSString***| Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **source** | **NSString***| The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here | [optional] 
 **latestMeasurementTime** | **NSString***| Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **numberOfRawMeasurements** | **NSString***| Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. | [optional] 
 **lastSource** | **NSString***| Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**SWGVariable***](SWGVariable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesPost**
```objc
-(NSNumber*) v1VariablesPostWithBody: (SWGVariablesNew*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Create Variables

Allows the client to create a new variable in the `variables` table.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGVariablesNew* body = [[SWGVariablesNew alloc] init]; // Original name for the variable.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Create Variables
[apiInstance v1VariablesPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1VariablesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGVariablesNew***](SWGVariablesNew*.md)| Original name for the variable. | 
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

# **v1VariablesSearchSearchGet**
```objc
-(NSNumber*) v1VariablesSearchSearchGetWithSearch: (NSString*) search
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    includePublic: (NSNumber*) includePublic
    manualTracking: (NSNumber*) manualTracking
    source: (NSString*) source
    effectOrCause: (NSString*) effectOrCause
    publicEffectOrCause: (NSString*) publicEffectOrCause
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
        completionHandler: (void (^)(NSArray<SWGVariable>* output, NSError* error)) handler;
```

Get variables by search query

Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* search = @"search_example"; // Search query which may be an entire variable name or a fragment of one.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* variableCategoryName = @"variableCategoryName_example"; // Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (optional)
NSNumber* includePublic = @true; // Set to true if you would like to include public variables when no user variables are found. (optional)
NSNumber* manualTracking = @true; // Set to true if you would like to exlude variables like apps and website names. (optional)
NSString* source = @"source_example"; // Specify a data source name to only return variables from a specific data source. (optional)
NSString* effectOrCause = @"effectOrCause_example"; // Indicate if you only want variables that have user correlations. Possible values are effect and cause. (optional)
NSString* publicEffectOrCause = @"publicEffectOrCause_example"; // Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Get variables by search query
[apiInstance v1VariablesSearchSearchGetWithSearch:search
              accessToken:accessToken
              userId:userId
              variableCategoryName:variableCategoryName
              includePublic:includePublic
              manualTracking:manualTracking
              source:source
              effectOrCause:effectOrCause
              publicEffectOrCause:publicEffectOrCause
              limit:limit
              offset:offset
          completionHandler: ^(NSArray<SWGVariable>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1VariablesSearchSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **NSString***| Search query which may be an entire variable name or a fragment of one. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **variableCategoryName** | **NSString***| Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. | [optional] 
 **includePublic** | **NSNumber***| Set to true if you would like to include public variables when no user variables are found. | [optional] 
 **manualTracking** | **NSNumber***| Set to true if you would like to exlude variables like apps and website names. | [optional] 
 **source** | **NSString***| Specify a data source name to only return variables from a specific data source. | [optional] 
 **effectOrCause** | **NSString***| Indicate if you only want variables that have user correlations. Possible values are effect and cause. | [optional] 
 **publicEffectOrCause** | **NSString***| Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 

### Return type

[**NSArray<SWGVariable>***](SWGVariable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesVariableNameGet**
```objc
-(NSNumber*) v1VariablesVariableNameGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGVariable* output, NSError* error)) handler;
```

Get info about a variable

Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Variable name
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGVariablesApi*apiInstance = [[SWGVariablesApi alloc] init];

// Get info about a variable
[apiInstance v1VariablesVariableNameGetWithVariableName:variableName
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGVariable* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVariablesApi->v1VariablesVariableNameGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Variable name | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

[**SWGVariable***](SWGVariable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

