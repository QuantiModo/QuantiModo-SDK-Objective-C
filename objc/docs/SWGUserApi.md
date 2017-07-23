# SWGUserApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrganizationsOrganizationIdUsersPost**](SWGUserApi.md#v1organizationsorganizationiduserspost) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users
[**v1UserMeGet**](SWGUserApi.md#v1usermeget) | **GET** /v1/user/me | Get all available units for variableGet authenticated user


# **v1OrganizationsOrganizationIdUsersPost**
```objc
-(NSNumber*) v1OrganizationsOrganizationIdUsersPostWithOrganizationId: (NSNumber*) organizationId
    body: (SWGUserTokenRequest*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGUserTokenSuccessfulResponse* output, NSError* error)) handler;
```

Get user tokens for existing users, create new users

Get user tokens for existing users, create new users

### Example 
```objc

NSNumber* organizationId = @56; // Organization ID
SWGUserTokenRequest* body = [[SWGUserTokenRequest alloc] init]; // Provides organization token and user ID
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get user tokens for existing users, create new users
[apiInstance v1OrganizationsOrganizationIdUsersPostWithOrganizationId:organizationId
              body:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGUserTokenSuccessfulResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->v1OrganizationsOrganizationIdUsersPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **NSNumber***| Organization ID | 
 **body** | [**SWGUserTokenRequest***](SWGUserTokenRequest*.md)| Provides organization token and user ID | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

[**SWGUserTokenSuccessfulResponse***](SWGUserTokenSuccessfulResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserMeGet**
```objc
-(NSNumber*) v1UserMeGetWithCompletionHandler: 
        (void (^)(SWGUser* output, NSError* error)) handler;
```

Get all available units for variableGet authenticated user

Returns user info for the currently authenticated user.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// Get all available units for variableGet authenticated user
[apiInstance v1UserMeGetWithCompletionHandler: 
          ^(SWGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->v1UserMeGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGUser***](SWGUser.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

