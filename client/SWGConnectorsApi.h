#import <Foundation/Foundation.h>
#import "SWGConnector.h"
#import "SWGObject.h"


@interface SWGConnectorsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGConnectorsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 List of Connectors
 Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.

 

 return type: NSArray<SWGConnector>*
 */
-(NSNumber*) connectorsListGetWithCompletionBlock :
    (void (^)(NSArray<SWGConnector>* output, NSError* error))completionBlock;
    


/**

 Obtain a token from 3rd party data source
 Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.

 @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 

 return type: 
 */
-(NSNumber*) connectorsConnectorConnectGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Get connection parameters
 Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

 @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 

 return type: 
 */
-(NSNumber*) connectorsConnectorConnectInstructionsGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Delete stored connection info
 The disconnect method deletes any stored tokens or connection information from the connectors database.

 @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 

 return type: 
 */
-(NSNumber*) connectorsConnectorDisconnectGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Get connector info for user
 Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.

 @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
 

 return type: 
 */
-(NSNumber*) connectorsConnectorInfoGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Sync with data source
 The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.

 @param connector Lowercase system name of the source application or device
 

 return type: 
 */
-(NSNumber*) connectorsConnectorUpdateGetWithCompletionBlock :(NSString*) connector 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end