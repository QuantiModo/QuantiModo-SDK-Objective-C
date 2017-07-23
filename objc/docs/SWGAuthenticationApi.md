# SWGAuthenticationApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2AuthSocialAuthorizeCodeGet**](SWGAuthenticationApi.md#v2authsocialauthorizecodeget) | **GET** /v2/auth/social/authorizeCode | Second Step in Social Authentication flow with JWT Token
[**v2AuthSocialAuthorizeTokenGet**](SWGAuthenticationApi.md#v2authsocialauthorizetokenget) | **GET** /v2/auth/social/authorizeToken | Native Social Authentication
[**v2AuthSocialLoginGet**](SWGAuthenticationApi.md#v2authsocialloginget) | **GET** /v2/auth/social/login | First Setp in Social Authentication flow with JWT Token
[**v2Oauth2AccessTokenGet**](SWGAuthenticationApi.md#v2oauth2accesstokenget) | **GET** /v2/oauth2/access_token | Get a user access token
[**v2OauthAuthorizeGet**](SWGAuthenticationApi.md#v2oauthauthorizeget) | **GET** /v2/oauth/authorize | Request Authorization Code


# **v2AuthSocialAuthorizeCodeGet**
```objc
-(NSNumber*) v2AuthSocialAuthorizeCodeGetWithCode: (NSString*) code
    provider: (NSString*) provider
        completionHandler: (void (^)(NSError* error)) handler;
```

Second Step in Social Authentication flow with JWT Token

 Here is the flow for how social authentication works with a JWT Token 1.**Client:** The client needs to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl`. (Url should be registered with our social apps. Facebook is fine with any redirect url with the same domain base url but Google needs exact redirect url.) 2.**Server:** The QM server will redirect user to that provider to get access. 3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error. 4.**Client:** The client needs to get that code and needs to send an Ajax request to server at `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}` 5.**Server:** The QM server will authorize that code from the social connection and will authenticate user and will retrieve user info. 6.**Server:** The QM server will try to find existing user by unique identity. If the user already exists then it will login. Otherwise, it will create new user and will then login. 7.**Server:** Once user is found/created, it will return a JWT token for that user in the response.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* code = @"code_example"; // Authorization code obtained from the provider.
NSString* provider = @"provider_example"; // The current options are `google` and `facebook`.

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Second Step in Social Authentication flow with JWT Token
[apiInstance v2AuthSocialAuthorizeCodeGetWithCode:code
              provider:provider
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->v2AuthSocialAuthorizeCodeGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **NSString***| Authorization code obtained from the provider. | 
 **provider** | **NSString***| The current options are &#x60;google&#x60; and &#x60;facebook&#x60;. | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AuthSocialAuthorizeTokenGet**
```objc
-(NSNumber*) v2AuthSocialAuthorizeTokenGetWithAccessToken: (NSString*) accessToken
    provider: (NSString*) provider
    refreshToken: (NSString*) refreshToken
        completionHandler: (void (^)(NSError* error)) handler;
```

Native Social Authentication

If you are using native authentication via Facebook or Google SDKs then you should use the following flow. 1.**Client:** Using native authentication via your native mobile app, get an access token using the instructions provided by the Facebook SDK (https://developers.facebook.com/docs/facebook-login) or Google (https://developers.google.com/identity/protocols/OAuth2) 2.**Client:** Send an Ajax request with provider name and access token on `https://app.quantimo.do/api/v2/auth/social/authorizeToken?provider={provider}&accessToken={accessToken}&refreshToken={refreshToken}` (`refreshToken` is optional) 3.**Server:** Server will try to get user info and will find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login 4.**Server:** Once user is found/created, it will return a JWT token for that user in response 5.**Client:** After getting the JWT token to get a QM access token follow these steps and include your JWT token in them as a header (Authorization: Bearer **{yourJWThere}**) or as a url parameter (https://app.quantimo.do/api/v2/oauth/authorize?token={yourJWThere}).

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accessToken = @"accessToken_example"; // User's OAuth2 access token obtained from Google or FB native SDK
NSString* provider = @"provider_example"; // The current options are `google` and `facebook`.
NSString* refreshToken = @"refreshToken_example"; // Optional refresh token obtained from Google or FB native SDK (optional)

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Native Social Authentication
[apiInstance v2AuthSocialAuthorizeTokenGetWithAccessToken:accessToken
              provider:provider
              refreshToken:refreshToken
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->v2AuthSocialAuthorizeTokenGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessToken** | **NSString***| User&#39;s OAuth2 access token obtained from Google or FB native SDK | 
 **provider** | **NSString***| The current options are &#x60;google&#x60; and &#x60;facebook&#x60;. | 
 **refreshToken** | **NSString***| Optional refresh token obtained from Google or FB native SDK | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AuthSocialLoginGet**
```objc
-(NSNumber*) v2AuthSocialLoginGetWithRedirectUrl: (NSString*) redirectUrl
    provider: (NSString*) provider
        completionHandler: (void (^)(NSError* error)) handler;
```

First Setp in Social Authentication flow with JWT Token

 Here is the flow for how social authentication works with a JWT Token 1.**Client:** The client needs to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl`. (Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url.) 2.**Server:** The QM server will redirect user to that provider to get access. 3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error. 4.**Client:** The client needs to get that code and needs to send an Ajax request to server at `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}` 5.**Server:** The QM server will authorize that code from the social connection and will authenticate user and will retrieve user info. 6.**Server:** The QM server will try to find existing user by unique identity. If the user already exists then it will login. Otherwise, it will create new user and will then login. 7.**Server:** Once user is found/created, it will return a JWT token for that user in the response.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* redirectUrl = @"redirectUrl_example"; // The redirect URI is the URL within your client application that will receive the OAuth2 credentials. Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url.
NSString* provider = @"provider_example"; // The current options are `google` and `facebook`.

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// First Setp in Social Authentication flow with JWT Token
[apiInstance v2AuthSocialLoginGetWithRedirectUrl:redirectUrl
              provider:provider
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->v2AuthSocialLoginGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirectUrl** | **NSString***| The redirect URI is the URL within your client application that will receive the OAuth2 credentials. Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url. | 
 **provider** | **NSString***| The current options are &#x60;google&#x60; and &#x60;facebook&#x60;. | 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2Oauth2AccessTokenGet**
```objc
-(NSNumber*) v2Oauth2AccessTokenGetWithClientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
    grantType: (NSString*) grantType
    code: (NSString*) code
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
    state: (NSString*) state
        completionHandler: (void (^)(NSError* error)) handler;
```

Get a user access token

Client provides authorization token obtained from /api/v1/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo. ### Request Access Token After user approves your access to the given scope form the https:/app.quantimo.do/v2/oauth2/authorize endpoint, you'll receive an authorization code to request an access token. This time make a `POST` request to `/api/v2/oauth/access_token` with parameters including: * `grant_type` Can be `authorization_code` or `refresh_token` since we are getting the `access_token` for the first time we don't have a `refresh_token` so this must be `authorization_code`. * `code` Authorization code you received with the previous request. * `redirect_uri` Your application's redirect url. ### Refreshing Access Token Access tokens expire at some point, to continue using our api you need to refresh them with `refresh_token` you received along with the `access_token`. To do this make a `POST` request to `/api/v2/oauth/access_token` with correct parameters, which are: * `grant_type` This time grant type must be `refresh_token` since we have it. * `clientId` Your application's client id. * `client_secret` Your application's client secret. * `refresh_token` The refresh token you received with the `access_token`. Every request you make to this endpoint will give you a new refresh token and make the old one expired. So you can keep getting new access tokens with new refresh tokens. ### Using Access Token Currently we support 2 ways for this, you can't use both at the same time. * Adding access token to the request header as `Authorization: Bearer {access_token}` * Adding to the url as a query parameter `?access_token={access_token}` You can read more about OAuth2 from [here](http://oauth.net/2/)

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* clientId = @"clientId_example"; // This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
NSString* clientSecret = @"clientSecret_example"; // This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId.
NSString* grantType = @"grantType_example"; // Grant Type can be 'authorization_code' or 'refresh_token'
NSString* code = @"code_example"; // Authorization code you received with the previous request.
NSString* responseType = @"responseType_example"; // If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment. (optional)
NSString* scope = @"scope_example"; // Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space. (optional)
NSString* redirectUri = @"redirectUri_example"; // The redirect URI is the URL within your client application that will receive the OAuth2 credentials. (optional)
NSString* state = @"state_example"; // An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI (optional)

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Get a user access token
[apiInstance v2Oauth2AccessTokenGetWithClientId:clientId
              clientSecret:clientSecret
              grantType:grantType
              code:code
              responseType:responseType
              scope:scope
              redirectUri:redirectUri
              state:state
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->v2Oauth2AccessTokenGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **NSString***| This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do. | 
 **clientSecret** | **NSString***| This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId. | 
 **grantType** | **NSString***| Grant Type can be &#39;authorization_code&#39; or &#39;refresh_token&#39; | 
 **code** | **NSString***| Authorization code you received with the previous request. | 
 **responseType** | **NSString***| If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment. | [optional] 
 **scope** | **NSString***| Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space. | [optional] 
 **redirectUri** | **NSString***| The redirect URI is the URL within your client application that will receive the OAuth2 credentials. | [optional] 
 **state** | **NSString***| An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2OauthAuthorizeGet**
```objc
-(NSNumber*) v2OauthAuthorizeGetWithClientId: (NSString*) clientId
    clientSecret: (NSString*) clientSecret
    responseType: (NSString*) responseType
    scope: (NSString*) scope
    redirectUri: (NSString*) redirectUri
    state: (NSString*) state
        completionHandler: (void (^)(NSError* error)) handler;
```

Request Authorization Code

You can implement OAuth2 authentication to your application using our **OAuth2** endpoints.  You need to redirect users to `/api/v2/oauth/authorize` endpoint to get an authorization code and include the parameters below.   This page will ask the user if they want to allow a client's application to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error. See the /api/v2/oauth/access_token endpoint for the next steps.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: access_token)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

// Configure OAuth2 access token for authorization: (authentication scheme: quantimodo_oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* clientId = @"clientId_example"; // This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps).
NSString* clientSecret = @"clientSecret_example"; // This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId.  Obtain this by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps).
NSString* responseType = @"responseType_example"; // If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
NSString* scope = @"scope_example"; // Scopes include basic, readmeasurements, and writemeasurements. The \"basic\" scope allows you to read user info (displayname, email, etc). The \"readmeasurements\" scope allows one to read a user's data. The \"writemeasurements\" scope allows you to write user data. Separate multiple scopes by a space.
NSString* redirectUri = @"redirectUri_example"; // The redirect URI is the URL within your client application that will receive the OAuth2 credentials. (optional)
NSString* state = @"state_example"; // An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI (optional)

SWGAuthenticationApi*apiInstance = [[SWGAuthenticationApi alloc] init];

// Request Authorization Code
[apiInstance v2OauthAuthorizeGetWithClientId:clientId
              clientSecret:clientSecret
              responseType:responseType
              scope:scope
              redirectUri:redirectUri
              state:state
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGAuthenticationApi->v2OauthAuthorizeGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **NSString***| This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps). | 
 **clientSecret** | **NSString***| This is the secret for your obtained clientId. QuantiModo uses this to validate that only your application uses the clientId.  Obtain this by creating a free application at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps). | 
 **responseType** | **NSString***| If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment. | 
 **scope** | **NSString***| Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space. | 
 **redirectUri** | **NSString***| The redirect URI is the URL within your client application that will receive the OAuth2 credentials. | [optional] 
 **state** | **NSString***| An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI | [optional] 

### Return type

void (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

