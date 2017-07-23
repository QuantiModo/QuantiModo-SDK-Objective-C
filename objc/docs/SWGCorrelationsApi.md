# SWGCorrelationsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AggregatedCorrelationsGet**](SWGCorrelationsApi.md#v1aggregatedcorrelationsget) | **GET** /v1/aggregatedCorrelations | Get aggregated correlations
[**v1AggregatedCorrelationsPost**](SWGCorrelationsApi.md#v1aggregatedcorrelationspost) | **POST** /v1/aggregatedCorrelations | Store or Update a Correlation
[**v1CorrelationsGet**](SWGCorrelationsApi.md#v1correlationsget) | **GET** /v1/correlations | Get correlations
[**v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet**](SWGCorrelationsApi.md#v1organizationsorganizationidusersuseridvariablesvariablenamecausesget) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes | Search user correlations for a given cause
[**v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet**](SWGCorrelationsApi.md#v1organizationsorganizationidusersuseridvariablesvariablenameeffectsget) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects | Search user correlations for a given cause
[**v1PublicCorrelationsSearchSearchGet**](SWGCorrelationsApi.md#v1publiccorrelationssearchsearchget) | **GET** /v1/public/correlations/search/{search} | Get average correlations for variables containing search term
[**v1VariablesVariableNameCausesGet**](SWGCorrelationsApi.md#v1variablesvariablenamecausesget) | **GET** /v1/variables/{variableName}/causes | Search user correlations for a given effect
[**v1VariablesVariableNameEffectsGet**](SWGCorrelationsApi.md#v1variablesvariablenameeffectsget) | **GET** /v1/variables/{variableName}/effects | Search user correlations for a given cause
[**v1VariablesVariableNamePublicCausesGet**](SWGCorrelationsApi.md#v1variablesvariablenamepubliccausesget) | **GET** /v1/variables/{variableName}/public/causes | Search public correlations for a given effect
[**v1VariablesVariableNamePublicEffectsGet**](SWGCorrelationsApi.md#v1variablesvariablenamepubliceffectsget) | **GET** /v1/variables/{variableName}/public/effects | Search public correlations for a given cause
[**v1VotesDeletePost**](SWGCorrelationsApi.md#v1votesdeletepost) | **POST** /v1/votes/delete | Delete vote
[**v1VotesPost**](SWGCorrelationsApi.md#v1votespost) | **POST** /v1/votes | Post or update vote


# **v1AggregatedCorrelationsGet**
```objc
-(NSNumber*) v1AggregatedCorrelationsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    effect: (NSString*) effect
    cause: (NSString*) cause
    correlationCoefficient: (NSString*) correlationCoefficient
    onsetDelay: (NSString*) onsetDelay
    durationOfAction: (NSString*) durationOfAction
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Get aggregated correlations

Get correlations based on the anonymized aggregate data from all QuantiModo users.

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
NSString* effect = @"effect_example"; // Variable name of the effect variable for which the user desires correlations (optional)
NSString* cause = @"cause_example"; // Variable name of the cause variable for which the user desires correlations (optional)
NSString* correlationCoefficient = @"correlationCoefficient_example"; // Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action (optional)
NSString* onsetDelay = @"onsetDelay_example"; // The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
NSString* durationOfAction = @"durationOfAction_example"; // The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
NSString* updatedAt = @"updatedAt_example"; // The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\".  Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append `?updatedAt=(ge)2013-01-D01T01:01:01 to your request. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
NSNumber* outcomesOfInterest = @true; // Only include correlations for which the effect is an outcome of interest for the user (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Get aggregated correlations
[apiInstance v1AggregatedCorrelationsGetWithAccessToken:accessToken
              userId:userId
              effect:effect
              cause:cause
              correlationCoefficient:correlationCoefficient
              onsetDelay:onsetDelay
              durationOfAction:durationOfAction
              updatedAt:updatedAt
              limit:limit
              offset:offset
              sort:sort
              outcomesOfInterest:outcomesOfInterest
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1AggregatedCorrelationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **effect** | **NSString***| Variable name of the effect variable for which the user desires correlations | [optional] 
 **cause** | **NSString***| Variable name of the cause variable for which the user desires correlations | [optional] 
 **correlationCoefficient** | **NSString***| Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action | [optional] 
 **onsetDelay** | **NSString***| The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | [optional] 
 **durationOfAction** | **NSString***| The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | [optional] 
 **updatedAt** | **NSString***| The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;.  Generally, you&#39;ll be retrieving new or updated user data. To avoid unnecessary API calls, you&#39;ll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append &#x60;?updatedAt&#x3D;(ge)2013-01-D01T01:01:01 to your request. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 
 **outcomesOfInterest** | **NSNumber***| Only include correlations for which the effect is an outcome of interest for the user | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AggregatedCorrelationsPost**
```objc
-(NSNumber*) v1AggregatedCorrelationsPostWithBody: (SWGPostCorrelation*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Store or Update a Correlation

Add correlation

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGPostCorrelation* body = [[SWGPostCorrelation alloc] init]; // Provides correlation data
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Store or Update a Correlation
[apiInstance v1AggregatedCorrelationsPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1AggregatedCorrelationsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGPostCorrelation***](SWGPostCorrelation*.md)| Provides correlation data | 
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

# **v1CorrelationsGet**
```objc
-(NSNumber*) v1CorrelationsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    effect: (NSString*) effect
    cause: (NSString*) cause
    correlationCoefficient: (NSString*) correlationCoefficient
    onsetDelay: (NSString*) onsetDelay
    durationOfAction: (NSString*) durationOfAction
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Get correlations

Get correlations based on data from a single user.

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
NSString* effect = @"effect_example"; // Variable name of the effect variable for which the user desires correlations (optional)
NSString* cause = @"cause_example"; // Variable name of the cause variable for which the user desires correlations (optional)
NSString* correlationCoefficient = @"correlationCoefficient_example"; // Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action (optional)
NSString* onsetDelay = @"onsetDelay_example"; // The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
NSString* durationOfAction = @"durationOfAction_example"; // The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
NSString* updatedAt = @"updatedAt_example"; // The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\".  Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append `?updatedAt=(ge)2013-01-D01T01:01:01 to your request. (optional)
NSNumber* limit = @56; // The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
NSNumber* offset = @56; // Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
NSNumber* sort = @56; // Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
NSNumber* outcomesOfInterest = @true; // Only include correlations for which the effect is an outcome of interest for the user (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Get correlations
[apiInstance v1CorrelationsGetWithAccessToken:accessToken
              userId:userId
              effect:effect
              cause:cause
              correlationCoefficient:correlationCoefficient
              onsetDelay:onsetDelay
              durationOfAction:durationOfAction
              updatedAt:updatedAt
              limit:limit
              offset:offset
              sort:sort
              outcomesOfInterest:outcomesOfInterest
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1CorrelationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **effect** | **NSString***| Variable name of the effect variable for which the user desires correlations | [optional] 
 **cause** | **NSString***| Variable name of the cause variable for which the user desires correlations | [optional] 
 **correlationCoefficient** | **NSString***| Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action | [optional] 
 **onsetDelay** | **NSString***| The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | [optional] 
 **durationOfAction** | **NSString***| The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | [optional] 
 **updatedAt** | **NSString***| The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;.  Generally, you&#39;ll be retrieving new or updated user data. To avoid unnecessary API calls, you&#39;ll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append &#x60;?updatedAt&#x3D;(ge)2013-01-D01T01:01:01 to your request. | [optional] 
 **limit** | **NSNumber***| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **NSNumber***| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **NSNumber***| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 
 **outcomesOfInterest** | **NSNumber***| Only include correlations for which the effect is an outcome of interest for the user | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet**
```objc
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithOrganizationId: (NSNumber*) organizationId
    userId2: (NSNumber*) userId2
    variableName: (NSString*) variableName
    organizationToken: (NSString*) organizationToken
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    includePublic: (NSString*) includePublic
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Search user correlations for a given cause

Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* organizationId = @56; // Organization ID
NSNumber* userId2 = @56; // User id
NSString* variableName = @"variableName_example"; // Effect variable name
NSString* organizationToken = @"organizationToken_example"; // Organization access token
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* includePublic = @"includePublic_example"; // Include public correlations, Can be \"1\" or empty. (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search user correlations for a given cause
[apiInstance v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithOrganizationId:organizationId
              userId2:userId2
              variableName:variableName
              organizationToken:organizationToken
              accessToken:accessToken
              userId:userId
              includePublic:includePublic
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **NSNumber***| Organization ID | 
 **userId2** | **NSNumber***| User id | 
 **variableName** | **NSString***| Effect variable name | 
 **organizationToken** | **NSString***| Organization access token | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **includePublic** | **NSString***| Include public correlations, Can be \&quot;1\&quot; or empty. | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet**
```objc
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithOrganizationId: (NSNumber*) organizationId
    userId2: (NSNumber*) userId2
    variableName: (NSString*) variableName
    organizationToken: (NSString*) organizationToken
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    includePublic: (NSString*) includePublic
        completionHandler: (void (^)(NSArray<SWGCommonResponse>* output, NSError* error)) handler;
```

Search user correlations for a given cause

Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* organizationId = @56; // Organization ID
NSNumber* userId2 = @56; // User id
NSString* variableName = @"variableName_example"; // Cause variable name
NSString* organizationToken = @"organizationToken_example"; // Organization access token
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* includePublic = @"includePublic_example"; // Include public correlations, Can be \"1\" or empty. (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search user correlations for a given cause
[apiInstance v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithOrganizationId:organizationId
              userId2:userId2
              variableName:variableName
              organizationToken:organizationToken
              accessToken:accessToken
              userId:userId
              includePublic:includePublic
          completionHandler: ^(NSArray<SWGCommonResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **NSNumber***| Organization ID | 
 **userId2** | **NSNumber***| User id | 
 **variableName** | **NSString***| Cause variable name | 
 **organizationToken** | **NSString***| Organization access token | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **includePublic** | **NSString***| Include public correlations, Can be \&quot;1\&quot; or empty. | [optional] 

### Return type

[**NSArray<SWGCommonResponse>***](SWGCommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PublicCorrelationsSearchSearchGet**
```objc
-(NSNumber*) v1PublicCorrelationsSearchSearchGetWithSearch: (NSString*) search
    effectOrCause: (NSString*) effectOrCause
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Get average correlations for variables containing search term

Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* search = @"search_example"; // Name of the variable that you want to know the causes or effects of.
NSString* effectOrCause = @"effectOrCause_example"; // Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned. cause indicates that the searched variable is the cause and the effects should be returned.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSNumber* outcomesOfInterest = @true; // Only include correlations for which the effect is an outcome of interest for the user (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Get average correlations for variables containing search term
[apiInstance v1PublicCorrelationsSearchSearchGetWithSearch:search
              effectOrCause:effectOrCause
              accessToken:accessToken
              userId:userId
              outcomesOfInterest:outcomesOfInterest
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1PublicCorrelationsSearchSearchGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **NSString***| Name of the variable that you want to know the causes or effects of. | 
 **effectOrCause** | **NSString***| Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned. cause indicates that the searched variable is the cause and the effects should be returned. | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **outcomesOfInterest** | **NSNumber***| Only include correlations for which the effect is an outcome of interest for the user | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesVariableNameCausesGet**
```objc
-(NSNumber*) v1VariablesVariableNameCausesGetWithVariableName: (NSString*) variableName
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Search user correlations for a given effect

Returns average of all correlations and votes for all user cause variables for a given effect

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Effect variable name

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search user correlations for a given effect
[apiInstance v1VariablesVariableNameCausesGetWithVariableName:variableName
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VariablesVariableNameCausesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Effect variable name | 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesVariableNameEffectsGet**
```objc
-(NSNumber*) v1VariablesVariableNameEffectsGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    correlationCoefficient: (NSString*) correlationCoefficient
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Search user correlations for a given cause

Returns average of all correlations and votes for all user effect variables for a given cause

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Cause variable name
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* correlationCoefficient = @"correlationCoefficient_example"; // You can use this to get effects with correlations greater than or less than 0 (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search user correlations for a given cause
[apiInstance v1VariablesVariableNameEffectsGetWithVariableName:variableName
              accessToken:accessToken
              userId:userId
              correlationCoefficient:correlationCoefficient
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VariablesVariableNameEffectsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Cause variable name | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **correlationCoefficient** | **NSString***| You can use this to get effects with correlations greater than or less than 0 | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesVariableNamePublicCausesGet**
```objc
-(NSNumber*) v1VariablesVariableNamePublicCausesGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    correlationCoefficient: (NSString*) correlationCoefficient
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Search public correlations for a given effect

Returns average of all correlations and votes for all public cause variables for a given effect

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Effect variable name
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)
NSString* correlationCoefficient = @"correlationCoefficient_example"; // You can use this to get causes with correlations greater than or less than 0 (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search public correlations for a given effect
[apiInstance v1VariablesVariableNamePublicCausesGetWithVariableName:variableName
              accessToken:accessToken
              userId:userId
              correlationCoefficient:correlationCoefficient
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VariablesVariableNamePublicCausesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Effect variable name | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 
 **correlationCoefficient** | **NSString***| You can use this to get causes with correlations greater than or less than 0 | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VariablesVariableNamePublicEffectsGet**
```objc
-(NSNumber*) v1VariablesVariableNamePublicEffectsGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler;
```

Search public correlations for a given cause

Returns average of all correlations and votes for all public cause variables for a given cause

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* variableName = @"variableName_example"; // Cause variable name
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Search public correlations for a given cause
[apiInstance v1VariablesVariableNamePublicEffectsGetWithVariableName:variableName
              accessToken:accessToken
              userId:userId
          completionHandler: ^(NSArray<SWGCorrelation>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VariablesVariableNamePublicEffectsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **NSString***| Cause variable name | 
 **accessToken** | **NSString***| User&#39;s OAuth2 access token | [optional] 
 **userId** | **NSNumber***| User&#39;s id | [optional] 

### Return type

[**NSArray<SWGCorrelation>***](SWGCorrelation.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1VotesDeletePost**
```objc
-(NSNumber*) v1VotesDeletePostWithBody: (SWGVoteDelete*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Delete vote

Delete previously posted vote

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGVoteDelete* body = [[SWGVoteDelete alloc] init]; // The cause and effect variable names for the predictor vote to be deleted.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Delete vote
[apiInstance v1VotesDeletePostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VotesDeletePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGVoteDelete***](SWGVoteDelete*.md)| The cause and effect variable names for the predictor vote to be deleted. | 
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

# **v1VotesPost**
```objc
-(NSNumber*) v1VotesPostWithBody: (SWGPostVote*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler;
```

Post or update vote

This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SWGPostVote* body = [[SWGPostVote alloc] init]; // Contains the cause variable, effect variable, and vote value.
NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token (optional)
NSNumber* userId = @56; // User's id (optional)

SWGCorrelationsApi*apiInstance = [[SWGCorrelationsApi alloc] init];

// Post or update vote
[apiInstance v1VotesPostWithBody:body
              accessToken:accessToken
              userId:userId
          completionHandler: ^(SWGCommonResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCorrelationsApi->v1VotesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGPostVote***](SWGPostVote*.md)| Contains the cause variable, effect variable, and vote value. | 
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

