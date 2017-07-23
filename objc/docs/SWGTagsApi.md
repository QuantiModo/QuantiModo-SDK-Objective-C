# SWGTagsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1UserTagsDeletePost**](SWGTagsApi.md#v1usertagsdeletepost) | **POST** /v1/userTags/delete | Delete user tag or ingredient
[**v1UserTagsPost**](SWGTagsApi.md#v1usertagspost) | **POST** /v1/userTags | Post or update user tags or ingredients


# **v1UserTagsDeletePost**
```objc
-(NSNumber*) v1UserTagsDeletePostWithTaggedVariableId: (NSNumber*) taggedVariableId
    tagVariableId: (NSNumber*) tagVariableId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Delete user tag or ingredient

Delete previously created user tags or ingredients.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* taggedVariableId = @56; // This is the id of the variable being tagged with an ingredient or something.
NSNumber* tagVariableId = @56; // This is the id of the ingredient variable whose value is determined based on the value of the tagged variable.

SWGTagsApi*apiInstance = [[SWGTagsApi alloc] init];

// Delete user tag or ingredient
[apiInstance v1UserTagsDeletePostWithTaggedVariableId:taggedVariableId
              tagVariableId:tagVariableId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTagsApi->v1UserTagsDeletePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taggedVariableId** | **NSNumber***| This is the id of the variable being tagged with an ingredient or something. | 
 **tagVariableId** | **NSNumber***| This is the id of the ingredient variable whose value is determined based on the value of the tagged variable. | 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UserTagsPost**
```objc
-(NSNumber*) v1UserTagsPostWithBody: (SWGUserTag*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Post or update user tags or ingredients

This endpoint allows users to tag foods with their ingredients.  This information will then be used to infer the user intake of the different ingredients by just entering the foods. The inferred intake levels will then be used to determine the effects of different nutrients on the user during analysis.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGUserTag* body = [[SWGUserTag alloc] init]; // Contains the new user tag data
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGTagsApi*apiInstance = [[SWGTagsApi alloc] init];

// Post or update user tags or ingredients
[apiInstance v1UserTagsPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTagsApi->v1UserTagsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGUserTag***](SWGUserTag*.md)| Contains the new user tag data | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

[**SWGCommonResponse***](SWGCommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

