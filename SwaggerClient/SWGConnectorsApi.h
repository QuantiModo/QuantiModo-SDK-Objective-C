#import <Foundation/Foundation.h>
#import "SWGConnector.h"
#import "SWGConnectorInstruction.h"
#import "SWGConnectorInfo.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGConnectorsApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGConnectorsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGConnectorsApi*) sharedAPI;
///
///
/// Get embeddable connect javascript
/// Get embeddable connect javascript. Usage:\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Use `qmSetupInPopup` function after connecting `connect.js`.\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Requires a selector to block. It will be embedded in this block.\n\n    Use `qmSetupOnPage` function after connecting `connect.js`.\n\n  - Embedding in mobile applications without popups for 3rd-party\nauthentication.\n\n    Use `qmSetupOnMobile` function after connecting `connect.js`.\n\n    if using the MoodiModo Clones, Use `qmSetupOnIonic` function after connecting `connect.js`.
///
/// @param accessToken User&#39;s access token
/// @param mashapeKey Mashape API key
/// 
///
/// @return 
-(NSNumber*) v1ConnectJsGetWithCompletionBlock :(NSString*) accessToken 
     mashapeKey:(NSString*) mashapeKey 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Mobile connect page
/// Mobile connect page
///
/// @param t User token
/// 
///
/// @return 
-(NSNumber*) v1ConnectMobileGetWithCompletionBlock :(NSString*) t 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// List of Connectors
/// A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
///
/// 
///
/// @return NSArray<SWGConnector>*
-(NSNumber*) v1ConnectorsListGetWithCompletionBlock :
    (void (^)(NSArray<SWGConnector>* output, NSError* error))completionBlock;
    


///
///
/// Obtain a token from 3rd party data source
/// Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
///
/// @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
/// 
///
/// @return 
-(NSNumber*) v1ConnectorsConnectorConnectGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Connection Instructions
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///
/// @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
/// @param parameters JSON Array of Parameters for the request to enable connector.
/// @param url URL which should be used to enable the connector.
/// @param usePopup Should use popup when enabling connector
/// 
///
/// @return 
-(NSNumber*) v1ConnectorsConnectorConnectInstructionsGetWithCompletionBlock :(NSString*) connector 
     parameters:(NSString*) parameters 
     url:(NSString*) url 
     usePopup:(NSNumber*) usePopup 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Connect Parameter
/// Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
///
/// @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
/// @param displayName Name of the parameter that is user visible in the form
/// @param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request)
/// @param placeholder Placeholder hint value for the parameter input tag.
/// @param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
/// @param usePopup Should use popup when enabling connector
/// @param defaultValue Default parameter value
/// 
///
/// @return SWGConnectorInstruction*
-(NSNumber*) v1ConnectorsConnectorConnectParameterGetWithCompletionBlock :(NSString*) connector 
     displayName:(NSString*) displayName 
     key:(NSString*) key 
     placeholder:(NSString*) placeholder 
     type:(NSString*) type 
     usePopup:(NSNumber*) usePopup 
     defaultValue:(NSString*) defaultValue 
    
    completionHandler: (void (^)(SWGConnectorInstruction* output, NSError* error))completionBlock;
    


///
///
/// Delete stored connection info
/// The disconnect method deletes any stored tokens or connection information from the connectors database.
///
/// @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
/// 
///
/// @return 
-(NSNumber*) v1ConnectorsConnectorDisconnectGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Get connector info for user
/// Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
///
/// @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
/// 
///
/// @return SWGConnectorInfo*
-(NSNumber*) v1ConnectorsConnectorInfoGetWithCompletionBlock :(NSString*) connector 
    
    completionHandler: (void (^)(SWGConnectorInfo* output, NSError* error))completionBlock;
    


///
///
/// Sync with data source
/// The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
///
/// @param connector Lowercase system name of the source application or device
/// 
///
/// @return 
-(NSNumber*) v1ConnectorsConnectorUpdateGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end
