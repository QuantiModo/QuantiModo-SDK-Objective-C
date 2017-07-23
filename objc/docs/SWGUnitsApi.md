# SWGUnitsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1UnitCategoriesGet**](SWGUnitsApi.md#v1unitcategoriesget) | **GET** /v1/unitCategories | Get unit categories
[**v1UnitsGet**](SWGUnitsApi.md#v1unitsget) | **GET** /v1/units | Get all available units
[**v1UnitsVariableGet**](SWGUnitsApi.md#v1unitsvariableget) | **GET** /v1/unitsVariable | Units for Variable


# **v1UnitCategoriesGet**
```objc
-(NSNumber*) v1UnitCategoriesGetWithCompletionHandler: 
        (void (^)(SWGUnitCategory* output, NSError* error)) handler;
```

Get unit categories

Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SWGUnitsApi*apiInstance = [[SWGUnitsApi alloc] init];

// Get unit categories
[apiInstance v1UnitCategoriesGetWithCompletionHandler: 
          ^(SWGUnitCategory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUnitsApi->v1UnitCategoriesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGUnitCategory***](SWGUnitCategory.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UnitsGet**
```objc
-(NSNumber*) v1UnitsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
        completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler;
```

Get all available units

Get all available units

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
NSNumber* _id = @56; // Unit id (optional)
NSString* unitName = @"unitName_example"; // Unit name (optional)
NSString* unitAbbreviatedName = @"unitAbbreviatedName_example"; // Restrict the results to a specific unit by providing the unit abbreviation. (optional)
NSString* unitCategoryName = @"unitCategoryName_example"; // Restrict the results to a specific unit category by providing the unit category name. (optional)

SWGUnitsApi*apiInstance = [[SWGUnitsApi alloc] init];

// Get all available units
[apiInstance v1UnitsGetWithAccessToken:accessToken
              userId:userId
              _id:_id
              unitName:unitName
              unitAbbreviatedName:unitAbbreviatedName
              unitCategoryName:unitCategoryName
          completionHandler: ^(NSArray<SWGUnit>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUnitsApi->v1UnitsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **_id** | **NSNumber***| Unit id | [optional] 
 **unitName** | **NSString***| Unit name | [optional] 
 **unitAbbreviatedName** | **NSString***| Restrict the results to a specific unit by providing the unit abbreviation. | [optional] 
 **unitCategoryName** | **NSString***| Restrict the results to a specific unit category by providing the unit category name. | [optional] 

### Return type

[**NSArray<SWGUnit>***](SWGUnit.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UnitsVariableGet**
```objc
-(NSNumber*) v1UnitsVariableGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
    variable: (NSString*) variable
        completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler;
```

Units for Variable

Get a list of all possible units to use for a given variable

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
NSString* unitName = @"unitName_example"; // Name of Unit you want to retrieve (optional)
NSString* unitAbbreviatedName = @"unitAbbreviatedName_example"; // Abbreviated Unit Name of the unit you want (optional)
NSString* unitCategoryName = @"unitCategoryName_example"; // Name of the category you want units for (optional)
NSString* variable = @"variable_example"; // Name of the variable you want units for (optional)

SWGUnitsApi*apiInstance = [[SWGUnitsApi alloc] init];

// Units for Variable
[apiInstance v1UnitsVariableGetWithAccessToken:accessToken
              userId:userId
              unitName:unitName
              unitAbbreviatedName:unitAbbreviatedName
              unitCategoryName:unitCategoryName
              variable:variable
          completionHandler: ^(NSArray<SWGUnit>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUnitsApi->v1UnitsVariableGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **unitName** | **NSString***| Name of Unit you want to retrieve | [optional] 
 **unitAbbreviatedName** | **NSString***| Abbreviated Unit Name of the unit you want | [optional] 
 **unitCategoryName** | **NSString***| Name of the category you want units for | [optional] 
 **variable** | **NSString***| Name of the variable you want units for | [optional] 

### Return type

[**NSArray<SWGUnit>***](SWGUnit.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

