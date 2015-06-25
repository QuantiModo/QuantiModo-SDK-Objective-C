#import <Foundation/Foundation.h>
#import "SWGUser.h"
#import "SWGUserTokenRequest.h"
#import "SWGUserTokenFailedResponse.h"
#import "SWGUserTokenSuccessfulResponse.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


@interface SWGUserApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGUserApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get all available units for variableGet authenticated user
 Returns user info for the currently authenticated user.

 

 return type: SWGUser*
 */
-(NSNumber*) userMeGetWithCompletionBlock :
    (void (^)(SWGUser* output, NSError* error))completionBlock;
    


/**

 Get user tokens for existing users, create new users
 Get user tokens for existing users, create new users

 @param organizationId Organization ID
 @param body Provides organization token and user ID
 

 return type: SWGUserTokenSuccessfulResponse*
 */
-(NSNumber*) v1OrganizationsOrganizationIdUsersPostWithCompletionBlock :(NSNumber*) organizationId 
     body:(SWGUserTokenRequest*) body 
    
    completionHandler: (void (^)(SWGUserTokenSuccessfulResponse* output, NSError* error))completionBlock;
    



@end
