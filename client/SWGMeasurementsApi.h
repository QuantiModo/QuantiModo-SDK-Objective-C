#import <Foundation/Foundation.h>
#import "SWGMeasurementSource.h"
#import "SWGMeasurement.h"
#import "SWGMeasurementSet.h"
#import "SWGMeasurementRange.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


@interface SWGMeasurementsApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGMeasurementsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get measurement sources
 Returns a list of all the apps from which measurement data is obtained.

 

 return type: SWGMeasurementSource*
 */
-(NSNumber*) measurementSourcesGetWithCompletionBlock :
    (void (^)(SWGMeasurementSource* output, NSError* error))completionBlock;
    


/**

 Add a data source
 Add a life-tracking app or device to the QuantiModo list of data sources.

 @param name An array of names of data sources you want to add.
 

 return type: 
 */
-(NSNumber*) measurementSourcesPostWithCompletionBlock :(SWGMeasurementSource*) name 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Get measurements for this user
 Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.

 @param variableName Name of the variable you want measurements for
 @param unit The unit your want the measurements in
 @param startTime The lower limit of measurements returned (Epoch)
 @param endTime The upper limit of measurements returned (Epoch)
 @param groupingWidth The time (in seconds) over which measurements are grouped together
 @param groupingTimezone The time (in seconds) over which measurements are grouped together
 

 return type: SWGMeasurement*
 */
-(NSNumber*) measurementsGetWithCompletionBlock :(NSString*) variableName 
     unit:(NSString*) unit 
     startTime:(NSString*) startTime 
     endTime:(NSString*) endTime 
     groupingWidth:(NSNumber*) groupingWidth 
     groupingTimezone:(NSString*) groupingTimezone 
    
    completionHandler: (void (^)(SWGMeasurement* output, NSError* error))completionBlock;
    


/**

 Post a new set or update existing measurements to the database
 You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"timestamp\":1406419860,\"value\":\"1\",\"note\":\"I am a note about back pain.\"},{\"timestamp\":1406519865,\"value\":\"3\",\"note\":\"I am another note about back pain.\"}],\"name\":\"Back Pain\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]

 @param measurements An array of measurements you want to insert.
 

 return type: 
 */
-(NSNumber*) measurementsV2PostWithCompletionBlock :(SWGMeasurementSet*) measurements 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


/**

 Get measurements range for this user
 Get Unix time-stamp (epoch time) of the user's first and last measurements taken.

 @param sources Enter source name to limit to specific source (varchar)
 @param user If not specified, uses currently logged in user (bigint)
 

 return type: SWGMeasurementRange*
 */
-(NSNumber*) measurementsRangeGetWithCompletionBlock :(NSString*) sources 
     user:(NSNumber*) user 
    
    completionHandler: (void (^)(SWGMeasurementRange* output, NSError* error))completionBlock;
    



@end
