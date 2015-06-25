#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGMeasurement
@end
  
@interface SWGMeasurement : SWGObject

/* ORIGINAL Name of the variable for which we are creating the measurement records 
 */
@property(nonatomic) NSString* variable;
/* Application or device used to record the measurement values 
 */
@property(nonatomic) NSString* source;
/* Timestamp for the measurement event in epoch time 
 */
@property(nonatomic) NSNumber* timestamp;
/* Converted measurement value in requested unit 
 */
@property(nonatomic) NSNumber* value;
/* Unit of measurement as requested in GET request 
 */
@property(nonatomic) NSString* unit;
/* Measurement value in the unit as orignally submitted [optional]
 */
@property(nonatomic) NSNumber* storedValue;
/* Unit of measurement as originally submitted [optional]
 */
@property(nonatomic) NSString* storedUnit;

@end
