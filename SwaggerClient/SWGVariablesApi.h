#import <Foundation/Foundation.h>
#import "SWGVariable.h"
#import "SWGVariableCategory.h"
#import "SWGVariableUserSettings.h"
#import "SWGVariablesNew.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGVariablesApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGVariablesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
///
///
/// Store or Update a Correlation
/// Store or Update a Correlation
///
/// @param cause 
/// @param effect 
/// @param correlationcoefficient 
/// @param vote 
/// 
///
/// @return 
-(NSNumber*) correlationsPostWithCompletionBlock :(NSString*) cause 
     effect:(NSString*) effect 
     correlationcoefficient:(NSString*) correlationcoefficient 
     vote:(NSString*) vote 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Get public variables
/// This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
///
/// 
///
/// @return SWGVariable*
-(NSNumber*) publicVariablesGetWithCompletionBlock :
    (void (^)(SWGVariable* output, NSError* error))completionBlock;
    


///
///
/// Get top 5 PUBLIC variables with the most correlations
/// Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.
///
/// @param search Search query can be some fraction of a variable name.
/// @param effectOrCause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
/// @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
/// @param offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
/// @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
/// 
///
/// @return SWGVariable*
-(NSNumber*) publicVariablesSearchSearchGetWithCompletionBlock :(NSString*) search 
     effectOrCause:(NSString*) effectOrCause 
     limit:(NSNumber*) limit 
     offset:(NSNumber*) offset 
     sort:(NSNumber*) sort 
    
    completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock;
    


///
///
/// Variable categories
/// The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
///
/// 
///
/// @return NSArray<SWGVariableCategory>*
-(NSNumber*) variableCategoriesGetWithCompletionBlock :
    (void (^)(NSArray<SWGVariableCategory>* output, NSError* error))completionBlock;
    


///
///
/// Update User Settings for a Variable
/// Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
///
/// @param sharingData Variable user settings data
/// 
///
/// @return 
-(NSNumber*) variableUserSettingsPostWithCompletionBlock :(SWGVariableUserSettings*) sharingData 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Get variables by the category name
/// Get variables by the category name. <br>Supported filter parameters:<br><ul><li><b>name</b> - Original name of the variable (supports exact name match only)</li><li><b>lastUpdated</b> - Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\"</li><li><b>source</b> - The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here</li><li><b>latestMeasurementTime</b> - Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li><li><b>numberOfMeasurements</b> - Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.</li><li><b>lastSource</b> - Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)</li></ul><br>
///
/// @param userId User id
/// @param category Filter data by category
/// @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
/// @param offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
/// @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
/// 
///
/// @return SWGVariable*
-(NSNumber*) variablesGetWithCompletionBlock :(NSNumber*) userId 
     category:(NSString*) category 
     limit:(NSNumber*) limit 
     offset:(NSNumber*) offset 
     sort:(NSNumber*) sort 
    
    completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock;
    


///
///
/// Create Variables
/// Allows the client to create a new variable in the `variables` table.
///
/// @param variableName Original name for the variable.
/// 
///
/// @return 
-(NSNumber*) variablesPostWithCompletionBlock :(SWGVariablesNew*) variableName 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// Get variables by search query
/// Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
///
/// @param search Search query which may be an entire variable name or a fragment of one.
/// @param categoryName Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
/// @param source Specify a data source name to only return variables from a specific data source.
/// @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
/// @param offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
/// 
///
/// @return NSArray<SWGVariable>*
-(NSNumber*) variablesSearchSearchGetWithCompletionBlock :(NSString*) search 
     categoryName:(NSString*) categoryName 
     source:(NSString*) source 
     limit:(NSNumber*) limit 
     offset:(NSNumber*) offset 
    
    completionHandler: (void (^)(NSArray<SWGVariable>* output, NSError* error))completionBlock;
    


///
///
/// Get info about a variable
/// Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
///
/// @param variableName Variable name
/// 
///
/// @return SWGVariable*
-(NSNumber*) variablesVariableNameGetWithCompletionBlock :(NSString*) variableName 
    
    completionHandler: (void (^)(SWGVariable* output, NSError* error))completionBlock;
    



@end