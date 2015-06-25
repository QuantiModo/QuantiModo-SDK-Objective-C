#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGApiClient.h"


@interface SWGConnectApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGConnectApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get embeddable connect javascript
 Get embeddable connect javascript

 @param t User token
 

 return type: 
 */
-(NSNumber*) v1ConnectJsGetWithCompletionBlock :(NSString*) t 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Mobile connect page
 Mobile connect page

 @param t User token
 

 return type: 
 */
-(NSNumber*) v1ConnectMobileGetWithCompletionBlock :(NSString*) t 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end
