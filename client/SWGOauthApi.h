#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGOauthApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGOauthApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Access Token
 Client provides authorization token obtained from /api/oauth2/authorize to this endpoint and receives an access token. Access token can then

 @param responseType Response type
 @param redirectUri Redirect uri
 @param realm Realm
 @param clientId Client id
 @param scope Scope
 @param state State
 

 return type: 
 */
-(NSNumber*) oauth2AccesstokenGetWithCompletionBlock :(NSString*) responseType 
     redirectUri:(NSString*) redirectUri 
     realm:(NSString*) realm 
     clientId:(NSString*) clientId 
     scope:(NSString*) scope 
     state:(NSString*) state 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Authorize
 Ask the user if they want to allow a client applications to submit or obtain data from their QM  account.

 @param clientId This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
 @param realm Name of the realm representing the users of your distributed applications and services. A \&quot;realm\&quot; attribute MAY be included to indicate the scope of protection.
 @param redirectUri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
 @param responseType If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
 @param scope Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space.
 @param state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
 

 return type: 
 */
-(NSNumber*) oauth2AuthorizeGetWithCompletionBlock :(NSString*) clientId 
     realm:(NSString*) realm 
     redirectUri:(NSString*) redirectUri 
     responseType:(NSString*) responseType 
     scope:(NSString*) scope 
     state:(NSString*) state 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end