# SWGOrganizationsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrganizationsOrganizationIdUsersPost**](SWGOrganizationsApi.md#v1organizationsorganizationiduserspost) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users


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

SWGOrganizationsApi*apiInstance = [[SWGOrganizationsApi alloc] init];

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
                            NSLog(@"Error calling SWGOrganizationsApi->v1OrganizationsOrganizationIdUsersPost: %@", error);
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

