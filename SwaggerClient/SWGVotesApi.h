#import <Foundation/Foundation.h>
#import "SWGCommonResponse.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGVotesApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGVotesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGVotesApi*) sharedAPI;
///
///
/// Post or update vote
/// This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
///
/// @param cause Cause variable name
/// @param effect Effect variable name
/// @param correlation Correlation value
/// @param vote Vote: 0 (for implausible) or 1 (for plausible)
/// 
///
/// @return SWGCommonResponse*
-(NSNumber*) v1VotesPostWithCompletionBlock :(NSString*) cause 
     effect:(NSString*) effect 
     correlation:(NSNumber*) correlation 
     vote:(NSNumber*) vote 
    
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock;
    


///
///
/// Delete vote
/// Delete previously posted vote
///
/// @param cause Cause variable name
/// @param effect Effect variable name
/// 
///
/// @return SWGCommonResponse*
-(NSNumber*) v1VotesDeletePostWithCompletionBlock :(NSString*) cause 
     effect:(NSString*) effect 
    
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock;
    



@end
