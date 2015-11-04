#import <Foundation/Foundation.h>
#import "SWGInlineResponse2005.h"
#import "SWGInlineResponse2006.h"
#import "SWGConnector.h"
#import "SWGInlineResponse2002.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGConnectorApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGConnectorApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGConnectorApi*) sharedAPI;
///
///
/// Get all Connectors
/// Get all Connectors
///
/// @param name name
/// @param displayName display_name
/// @param image image
/// @param getItUrl get_it_url
/// @param shortDescription short_description
/// @param longDescription long_description
/// @param enabled enabled
/// @param oauth oauth
/// @param limit limit
/// @param offset offset
/// @param sort sort
/// 
///
/// @return SWGInlineResponse2005*
-(NSNumber*) connectorsGetWithCompletionBlock :(NSString*) name 
     displayName:(NSString*) displayName 
     image:(NSString*) image 
     getItUrl:(NSString*) getItUrl 
     shortDescription:(NSString*) shortDescription 
     longDescription:(NSString*) longDescription 
     enabled:(NSNumber*) enabled 
     oauth:(NSNumber*) oauth 
     limit:(NSNumber*) limit 
     offset:(NSNumber*) offset 
     sort:(NSString*) sort 
    
    completionHandler: (void (^)(SWGInlineResponse2005* output, NSError* error))completionBlock;
    


///
///
/// Store Connector
/// Store Connector
///
/// @param body Connector that should be stored
/// 
///
/// @return SWGInlineResponse2006*
-(NSNumber*) connectorsPostWithCompletionBlock :(SWGConnector*) body 
    
    completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error))completionBlock;
    


///
///
/// Get Connector
/// Get Connector
///
/// @param _id id of Connector
/// 
///
/// @return SWGInlineResponse2006*
-(NSNumber*) connectorsIdGetWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SWGInlineResponse2006* output, NSError* error))completionBlock;
    


///
///
/// Update Connector
/// Update Connector
///
/// @param _id id of Connector
/// @param body Connector that should be updated
/// 
///
/// @return SWGInlineResponse2002*
-(NSNumber*) connectorsIdPutWithCompletionBlock :(NSNumber*) _id 
     body:(SWGConnector*) body 
    
    completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock;
    


///
///
/// Delete Connector
/// Delete Connector
///
/// @param _id id of Connector
/// 
///
/// @return SWGInlineResponse2002*
-(NSNumber*) connectorsIdDeleteWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SWGInlineResponse2002* output, NSError* error))completionBlock;
    



@end