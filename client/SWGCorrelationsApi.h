#import <Foundation/Foundation.h>
#import "SWGCorrelation.h"
#import "SWGJsonErrorResponse.h"
#import "SWGPostCorrelation.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


@interface SWGCorrelationsApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGCorrelationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get correlations
 Get correlations

 @param effect ORIGINAL variable name of the effect variable for which the user desires correlations
 @param cause ORIGINAL variable name of the cause variable for which the user desires correlations
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) correlationsGetWithCompletionBlock :(NSString*) effect 
     cause:(NSString*) cause 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Get average correlations for variables containing search term
 Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.

 @param search Name of the variable that you want to know the causes or effects of.
 @param effectOrCause Specifies whether to return the effects or causes of the searched variable.
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) publicCorrelationsSearchSearchGetWithCompletionBlock :(NSString*) search 
     effectOrCause:(NSString*) effectOrCause 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Add correlation or/and vote for it
 Add correlation or/and vote for it

 @param body Provides correlation data
 

 return type: 
 */
-(NSNumber*) v1CorrelationsPostWithCompletionBlock :(SWGPostCorrelation*) body 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Search user correlations for a given effect
 Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

 @param organizationId Organization ID
 @param userId User id
 @param variableName Effect variable name
 @param organizationToken Organization access token
 @param includePublic Include bublic correlations, Can be \&quot;1\&quot; or empty.
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithCompletionBlock :(NSNumber*) organizationId 
     userId:(NSNumber*) userId 
     variableName:(NSString*) variableName 
     organizationToken:(NSString*) organizationToken 
     includePublic:(NSString*) includePublic 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Search user correlations for a given cause
 Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

 @param organizationId Organization ID
 @param userId User id
 @param variableName Cause variable name
 @param organizationToken Organization access token
 @param includePublic Include bublic correlations, Can be \&quot;1\&quot; or empty.
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithCompletionBlock :(NSNumber*) organizationId 
     userId:(NSNumber*) userId 
     variableName:(NSString*) variableName 
     organizationToken:(NSString*) organizationToken 
     includePublic:(NSString*) includePublic 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Search user correlations for a given effect
 Returns average of all correlations and votes for all user cause variables for a given effect

 @param variableName Effect variable name
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNameCausesGetWithCompletionBlock :(NSString*) variableName 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Search user correlations for a given cause
 Returns average of all correlations and votes for all user effect variables for a given cause

 @param variableName Cause variable name
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNameEffectsGetWithCompletionBlock :(NSString*) variableName 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Search public correlations for a given effect
 Returns average of all correlations and votes for all public cause variables for a given effect

 @param variableName Effect variable name
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNamePublicCausesGetWithCompletionBlock :(NSString*) variableName 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    


/**

 Search public correlations for a given cause
 Returns average of all correlations and votes for all public cause variables for a given cause

 @param variableName Cause variable name
 

 return type: NSArray<SWGCorrelation>*
 */
-(NSNumber*) v1VariablesVariableNamePublicEffectsGetWithCompletionBlock :(NSString*) variableName 
    
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock;
    



@end
