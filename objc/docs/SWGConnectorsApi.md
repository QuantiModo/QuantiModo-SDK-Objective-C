# SWGConnectorsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ConnectMobileGet**](SWGConnectorsApi.md#v1connectmobileget) | **GET** /v1/connect/mobile | Mobile connect page
[**v1ConnectorsConnectorNameConnectGet**](SWGConnectorsApi.md#v1connectorsconnectornameconnectget) | **GET** /v1/connectors/{connectorName}/connect | Obtain a token from 3rd party data source
[**v1ConnectorsConnectorNameConnectInstructionsGet**](SWGConnectorsApi.md#v1connectorsconnectornameconnectinstructionsget) | **GET** /v1/connectors/{connectorName}/connectInstructions | Connection Instructions
[**v1ConnectorsConnectorNameConnectParameterGet**](SWGConnectorsApi.md#v1connectorsconnectornameconnectparameterget) | **GET** /v1/connectors/{connectorName}/connectParameter | Connect Parameter
[**v1ConnectorsConnectorNameDisconnectGet**](SWGConnectorsApi.md#v1connectorsconnectornamedisconnectget) | **GET** /v1/connectors/{connectorName}/disconnect | Delete stored connection info
[**v1ConnectorsConnectorNameInfoGet**](SWGConnectorsApi.md#v1connectorsconnectornameinfoget) | **GET** /v1/connectors/{connectorName}/info | Get connector info for user
[**v1ConnectorsConnectorNameUpdateGet**](SWGConnectorsApi.md#v1connectorsconnectornameupdateget) | **GET** /v1/connectors/{connectorName}/update | Sync with data source
[**v1ConnectorsListGet**](SWGConnectorsApi.md#v1connectorslistget) | **GET** /v1/connectors/list | List of Connectors
[**v1IntegrationJsGet**](SWGConnectorsApi.md#v1integrationjsget) | **GET** /v1/integration.js | Get embeddable connect javascript


# **v1ConnectMobileGet**
```objc
-(NSNumber*) v1ConnectMobileGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Mobile connect page

This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123

### Example 
```objc

NSString* accessToken = @"accessToken_example"; // User OAuth access token
NSNumber* userId = @56; // User's id (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Mobile connect page
[apiInstance v1ConnectMobileGetWithAccessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectMobileGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User OAuth access token | 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConnectorsConnectorNameConnectGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameConnectGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Obtain a token from 3rd party data source

Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Obtain a token from 3rd party data source
[apiInstance v1ConnectorsConnectorNameConnectGetWithConnectorName:connectorName
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameConnectGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
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

# **v1ConnectorsConnectorNameConnectInstructionsGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameConnectInstructionsGetWithConnectorName: (NSString*) connectorName
    parameters: (NSString*) parameters
    url: (NSString*) url
    usePopup: (NSNumber*) usePopup
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Connection Instructions

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.
NSString* parameters = @"parameters_example"; // JSON Array of Parameters for the request to enable connector.
NSString* url = @"url_example"; // URL which should be used to enable the connector.
NSNumber* usePopup = @true; // Should use popup when enabling connector
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Connection Instructions
[apiInstance v1ConnectorsConnectorNameConnectInstructionsGetWithConnectorName:connectorName
              parameters:parameters
              url:url
              usePopup:usePopup
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameConnectInstructionsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **parameters** | **NSString***| JSON Array of Parameters for the request to enable connector. | 
 **url** | **NSString***| URL which should be used to enable the connector. | 
 **usePopup** | **NSNumber***| Should use popup when enabling connector | 
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

# **v1ConnectorsConnectorNameConnectParameterGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameConnectParameterGetWithConnectorName: (NSString*) connectorName
    displayName: (NSString*) displayName
    key: (NSString*) key
    placeholder: (NSString*) placeholder
    type: (NSString*) type
    usePopup: (NSNumber*) usePopup
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    defaultValue: (NSString*) defaultValue
        completionHandler: (void (^)(SWGConnectorInstruction* output, NSError* error)) handler;
```

Connect Parameter

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.
NSString* displayName = @"displayName_example"; // Name of the parameter that is user visible in the form
NSString* key = @"key_example"; // Name of the property that the user has to enter such as username or password Connector (used in HTTP request)
NSString* placeholder = @"placeholder_example"; // Placeholder hint value for the parameter input tag.
NSString* type = @"type_example"; // Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
NSNumber* usePopup = @true; // Should use popup when enabling connector
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* defaultValue = @"defaultValue_example"; // Default parameter value (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Connect Parameter
[apiInstance v1ConnectorsConnectorNameConnectParameterGetWithConnectorName:connectorName
              displayName:displayName
              key:key
              placeholder:placeholder
              type:type
              usePopup:usePopup
              accessToken:accessToken
              userId:userId
              defaultValue:defaultValue
          completionHandler: ^(SWGConnectorInstruction* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameConnectParameterGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **displayName** | **NSString***| Name of the parameter that is user visible in the form | 
 **key** | **NSString***| Name of the property that the user has to enter such as username or password Connector (used in HTTP request) | 
 **placeholder** | **NSString***| Placeholder hint value for the parameter input tag. | 
 **type** | **NSString***| Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp | 
 **usePopup** | **NSNumber***| Should use popup when enabling connector | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **defaultValue** | **NSString***| Default parameter value | [optional] 

### Return type

[**SWGConnectorInstruction***](SWGConnectorInstruction.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConnectorsConnectorNameDisconnectGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameDisconnectGetWithConnectorName: (NSString*) connectorName
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete stored connection info

The disconnect method deletes any stored tokens or connection information from the connectors database.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Delete stored connection info
[apiInstance v1ConnectorsConnectorNameDisconnectGetWithConnectorName:connectorName
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameDisconnectGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConnectorsConnectorNameInfoGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameInfoGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGConnectorInfo* output, NSError* error)) handler;
```

Get connector info for user

Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Get connector info for user
[apiInstance v1ConnectorsConnectorNameInfoGetWithConnectorName:connectorName
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGConnectorInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameInfoGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

[**SWGConnectorInfo***](SWGConnectorInfo.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConnectorsConnectorNameUpdateGet**
```objc
-(NSNumber*) v1ConnectorsConnectorNameUpdateGetWithConnectorName: (NSString*) connectorName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Sync with data source

The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* connectorName = @"connectorName_example"; // Lowercase system name of the source application or device
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Sync with data source
[apiInstance v1ConnectorsConnectorNameUpdateGetWithConnectorName:connectorName
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsConnectorNameUpdateGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorName** | **NSString***| Lowercase system name of the source application or device | 
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

# **v1ConnectorsListGet**
```objc
-(NSNumber*) v1ConnectorsListGetWithCompletionHandler: 
        (void (^)(NSArray<SWGConnector>* output, NSError* error)) handler;
```

List of Connectors

A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// List of Connectors
[apiInstance v1ConnectorsListGetWithCompletionHandler: 
          ^(NSArray<SWGConnector>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1ConnectorsListGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<SWGConnector>***](SWGConnector.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IntegrationJsGet**
```objc
-(NSNumber*) v1IntegrationJsGetWithAccessToken: (NSString*) accessToken
        completionHandler: (void (^)(NSError* error)) handler;
```

Get embeddable connect javascript

Get embeddable connect javascript. Usage:   - Embedding in applications with popups for 3rd-party authentication windows.     Use `qmSetupInPopup` function after connecting `connect.js`.   - Embedding in applications with popups for 3rd-party authentication windows.     Requires a selector to block. It will be embedded in this block.     Use `qmSetupOnPage` function after connecting `connect.js`.   - Embedding in mobile applications without popups for 3rd-party authentication.     Use `qmSetupOnMobile` function after connecting `connect.js`.     If using in a Cordova application call  `qmSetupOnIonic` function after connecting `connect.js`.

### Example 
```objc

NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)

SWGConnectorsApi*apiInstance = [[SWGConnectorsApi alloc] init];

// Get embeddable connect javascript
[apiInstance v1IntegrationJsGetWithAccessToken:accessToken
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGConnectorsApi->v1IntegrationJsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-javascript

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

