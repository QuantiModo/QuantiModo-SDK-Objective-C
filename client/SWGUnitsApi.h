#import <Foundation/Foundation.h>
#import "SWGUnitCategory.h"
#import "SWGUnit.h"
#import "SWGObject.h"


@interface SWGUnitsApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGUnitsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 Get unit categories
 Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.

 

 return type: 
 */
-(NSNumber*) unitCategoriesGetWithCompletionBlock :
    
    (void (^)(NSError* error))completionBlock;


/**

 Get all available units
 Get all available units

 @param unitName Unit name
 @param abbreviatedUnitName Restrict the results to a specific unit by providing the unit abbreviation.
 @param categoryName Restrict the results to a specific unit category by providing the unit category name.
 

 return type: 
 */
-(NSNumber*) unitsGetWithCompletionBlock :(NSString*) unitName 
     abbreviatedUnitName:(NSString*) abbreviatedUnitName 
     categoryName:(NSString*) categoryName 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;



@end