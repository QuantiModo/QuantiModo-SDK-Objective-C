# SWGRemindersApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TrackingReminderNotificationsGet**](SWGRemindersApi.md#v1trackingremindernotificationsget) | **GET** /v1/trackingReminderNotifications | Get specific pending tracking reminders
[**v1TrackingReminderNotificationsSkipPost**](SWGRemindersApi.md#v1trackingremindernotificationsskippost) | **POST** /v1/trackingReminderNotifications/skip | Skip a pending tracking reminder
[**v1TrackingReminderNotificationsSnoozePost**](SWGRemindersApi.md#v1trackingremindernotificationssnoozepost) | **POST** /v1/trackingReminderNotifications/snooze | Snooze a pending tracking reminder
[**v1TrackingReminderNotificationsTrackPost**](SWGRemindersApi.md#v1trackingremindernotificationstrackpost) | **POST** /v1/trackingReminderNotifications/track | Track a pending tracking reminder
[**v1TrackingRemindersDeletePost**](SWGRemindersApi.md#v1trackingremindersdeletepost) | **POST** /v1/trackingReminders/delete | Delete tracking reminder
[**v1TrackingRemindersGet**](SWGRemindersApi.md#v1trackingremindersget) | **GET** /v1/trackingReminders | Get repeating tracking reminder settings
[**v1TrackingRemindersPost**](SWGRemindersApi.md#v1trackingreminderspost) | **POST** /v1/trackingReminders | Store a Tracking Reminder


# **v1TrackingReminderNotificationsGet**
```objc
-(NSNumber*) v1TrackingReminderNotificationsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    createdAt: (NSString*) createdAt
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error)) handler;
```

Get specific pending tracking reminders

Specfic pending reminder instances that still need to be tracked.  

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
NSString* variableCategoryName = @"variableCategoryName_example"; // Limit tracking reminder notifications to a specific variable category (optional)
NSString* createdAt = @"createdAt_example"; // When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local. (optional)
NSString* updatedAt = @"updatedAt_example"; // When the record was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. (optional)
NSNumber* offset = @56; // OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. (optional)
NSString* sort = @"sort_example"; // Sort by given field. If the field is prefixed with '-', it will sort in descending order. (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Get specific pending tracking reminders
[apiInstance v1TrackingReminderNotificationsGetWithAccessToken:accessToken
              userId:userId
              variableCategoryName:variableCategoryName
              createdAt:createdAt
              updatedAt:updatedAt
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingReminderNotificationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **variableCategoryName** | **NSString***| Limit tracking reminder notifications to a specific variable category | [optional] 
 **createdAt** | **NSString***| When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **updatedAt** | **NSString***| When the record was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **NSNumber***| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **NSString***| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**SWGInlineResponse2002***](SWGInlineResponse2002.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TrackingReminderNotificationsSkipPost**
```objc
-(NSNumber*) v1TrackingReminderNotificationsSkipPostWithBody: (SWGTrackingReminderNotificationSkip*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Skip a pending tracking reminder

Deletes the pending tracking reminder

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGTrackingReminderNotificationSkip* body = [[SWGTrackingReminderNotificationSkip alloc] init]; // Id of the pending reminder to be skipped or deleted
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Skip a pending tracking reminder
[apiInstance v1TrackingReminderNotificationsSkipPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingReminderNotificationsSkipPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGTrackingReminderNotificationSkip***](SWGTrackingReminderNotificationSkip*.md)| Id of the pending reminder to be skipped or deleted | 
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

# **v1TrackingReminderNotificationsSnoozePost**
```objc
-(NSNumber*) v1TrackingReminderNotificationsSnoozePostWithBody: (SWGTrackingReminderNotificationSnooze*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Snooze a pending tracking reminder

Changes the reminder time to now plus one hour

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGTrackingReminderNotificationSnooze* body = [[SWGTrackingReminderNotificationSnooze alloc] init]; // Id of the pending reminder to be snoozed
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Snooze a pending tracking reminder
[apiInstance v1TrackingReminderNotificationsSnoozePostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingReminderNotificationsSnoozePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGTrackingReminderNotificationSnooze***](SWGTrackingReminderNotificationSnooze*.md)| Id of the pending reminder to be snoozed | 
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

# **v1TrackingReminderNotificationsTrackPost**
```objc
-(NSNumber*) v1TrackingReminderNotificationsTrackPostWithBody: (SWGTrackingReminderNotificationTrack*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Track a pending tracking reminder

Adds the default measurement for the pending tracking reminder with the reminder time as the measurment start time

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGTrackingReminderNotificationTrack* body = [[SWGTrackingReminderNotificationTrack alloc] init]; // Id of the pending reminder to be tracked
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Track a pending tracking reminder
[apiInstance v1TrackingReminderNotificationsTrackPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingReminderNotificationsTrackPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGTrackingReminderNotificationTrack***](SWGTrackingReminderNotificationTrack*.md)| Id of the pending reminder to be tracked | 
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

# **v1TrackingRemindersDeletePost**
```objc
-(NSNumber*) v1TrackingRemindersDeletePostWithBody: (SWGTrackingReminderDelete*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Delete tracking reminder

Delete previously created tracking reminder

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGTrackingReminderDelete* body = [[SWGTrackingReminderDelete alloc] init]; // Id of reminder to be deleted
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Delete tracking reminder
[apiInstance v1TrackingRemindersDeletePostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingRemindersDeletePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGTrackingReminderDelete***](SWGTrackingReminderDelete*.md)| Id of reminder to be deleted | 
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

# **v1TrackingRemindersGet**
```objc
-(NSNumber*) v1TrackingRemindersGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    variableCategoryName: (NSString*) variableCategoryName
    createdAt: (NSString*) createdAt
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSString*) sort
        completionHandler: (void (^)(SWGInlineResponse200* output, NSError* error)) handler;
```

Get repeating tracking reminder settings

Users can be reminded to track certain variables at a specified frequency with a default value.

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
NSString* variableCategoryName = @"variableCategoryName_example"; // Limit tracking reminders to a specific variable category (optional)
NSString* createdAt = @"createdAt_example"; // When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local. (optional)
NSString* updatedAt = @"updatedAt_example"; // When the record was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. (optional)
NSNumber* offset = @56; // OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. (optional)
NSString* sort = @"sort_example"; // Sort by given field. If the field is prefixed with '-', it will sort in descending order. (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Get repeating tracking reminder settings
[apiInstance v1TrackingRemindersGetWithAccessToken:accessToken
              userId:userId
              variableCategoryName:variableCategoryName
              createdAt:createdAt
              updatedAt:updatedAt
              limit:limit
              offset:offset
              sort:sort
          completionHandler: ^(SWGInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingRemindersGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **variableCategoryName** | **NSString***| Limit tracking reminders to a specific variable category | [optional] 
 **createdAt** | **NSString***| When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **updatedAt** | **NSString***| When the record was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **NSNumber***| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **NSString***| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**SWGInlineResponse200***](SWGInlineResponse200.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TrackingRemindersPost**
```objc
-(NSNumber*) v1TrackingRemindersPostWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    body: (SWGTrackingReminder*) body
        completionHandler: (void (^)(SWGInlineResponse2001* output, NSError* error)) handler;
```

Store a Tracking Reminder

This is to enable users to create reminders to track a variable with a default value at a specified frequency

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
SWGTrackingReminder* body = [[SWGTrackingReminder alloc] init]; // TrackingReminder that should be stored (optional)

SWGRemindersApi*apiInstance = [[SWGRemindersApi alloc] init];

// Store a Tracking Reminder
[apiInstance v1TrackingRemindersPostWithAccessToken:accessToken
              userId:userId
              body:body
          completionHandler: ^(SWGInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRemindersApi->v1TrackingRemindersPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **body** | [**SWGTrackingReminder***](SWGTrackingReminder*.md)| TrackingReminder that should be stored | [optional] 

### Return type

[**SWGInlineResponse2001***](SWGInlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

