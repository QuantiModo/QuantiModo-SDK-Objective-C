#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGApiClient.h"


@interface SWGOauthApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGOauthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Access Token
 Client provides authorization token obtained from /api/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo.

 @param clientId Client id
 @param clientSecret Client secret
 @param grantType Grant Type can be &#39;authorization_code&#39; or &#39;refresh_token&#39;
 @param responseType Response type
 @param scope Scope
 @param redirectUri Redirect uri
 @param state State
 @param realm Realm
 

 return type: 
 */
-(NSNumber*) oauth2AccesstokenGetWithCompletionBlock :(NSString*) clientId 
     clientSecret:(NSString*) clientSecret 
     grantType:(NSString*) grantType 
     responseType:(NSString*) responseType 
     scope:(NSString*) scope 
     redirectUri:(NSString*) redirectUri 
     state:(NSString*) state 
     realm:(NSString*) realm 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Authorize
 Ask the user if they want to allow a client applications to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error.

 @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
 @param clientSecret This is the secret for your obtained clietn_id. QuantiModo uses this to validate that only your application uses the client_id.
 @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
 @param scope Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space.
 @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
 @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
 @param realm Name of the realm representing the users of your distributed applications and services. A \&quot;realm\&quot; attribute MAY be included to indicate the scope of protection.
 

 return type: 
 */
-(NSNumber*) oauth2AuthorizeGetWithCompletionBlock :(NSString*) clientId 
     clientSecret:(NSString*) clientSecret 
     responseType:(NSString*) responseType 
     scope:(NSString*) scope 
     redirectUri:(NSString*) redirectUri 
     state:(NSString*) state 
     realm:(NSString*) realm 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end
