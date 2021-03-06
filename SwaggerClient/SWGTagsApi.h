#import <Foundation/Foundation.h>
#import "SWGUserTag.h"
#import "SWGCommonResponse.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGTagsApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGTagsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGTagsApi*) sharedAPI;
///
///
/// Post or update user tags or ingredients
/// This endpoint allows users to tag foods with their ingredients.  This information will then be used to infer the user intake of the different ingredients by just entering the foods. The inferred intake levels will then be used to determine the effects of different nutrients on the user during analysis.
///
/// @param body Contains the new user tag data
/// @param accessToken User&#39;s OAuth2 access token
/// 
///
/// @return SWGCommonResponse*
-(NSNumber*) v1UserTagsPostWithCompletionBlock :(SWGUserTag*) body 
     accessToken:(NSString*) accessToken 
    
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock;
    


///
///
/// Delete user tag or ingredient
/// Delete previously created user tags or ingredients.
///
/// @param taggedVariableId This is the id of the variable being tagged with an ingredient or something.
/// @param tagVariableId This is the id of the ingredient variable whose value is determined based on the value of the tagged variable.
/// 
///
/// @return SWGCommonResponse*
-(NSNumber*) v1UserTagsDeletePostWithCompletionBlock :(NSNumber*) taggedVariableId 
     tagVariableId:(NSNumber*) tagVariableId 
    
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock;
    



@end
