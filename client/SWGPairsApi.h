#import <Foundation/Foundation.h>
#import "SWGPairs.h"
#import "SWGObject.h"


@interface SWGPairsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGPairsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get pairs
 Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.

 @param cause Original variable name for the explanatory or independent variable
 @param causeSource Name of data source that the cause measurements should come from
 @param causeUnit Abbreviated name for the unit cause measurements to be returned in
 @param delay Delay before onset of action (in seconds) from the cause variable settings.
 @param duration Duration of action (in seconds) from the cause variable settings.
 @param effect Original variable name for the outcome or dependent variable
 @param effectSource Name of data source that the effectmeasurements should come from
 @param effectUnit Abbreviated name for the unit effect measurements to be returned in
 @param endTime The most recent date (in epoch time) for which we should return measurements
 @param startTime The earliest date (in epoch time) for which we should return measurements
 

 return type: 
 */
-(NSNumber*) pairsGetWithCompletionBlock :(NSString*) cause 
     causeSource:(NSString*) causeSource 
     causeUnit:(NSString*) causeUnit 
     delay:(NSString*) delay 
     duration:(NSString*) duration 
     effect:(NSString*) effect 
     effectSource:(NSString*) effectSource 
     effectUnit:(NSString*) effectUnit 
     endTime:(NSString*) endTime 
     startTime:(NSString*) startTime 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end