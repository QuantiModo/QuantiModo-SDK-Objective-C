#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGValueObject
@end
  
@interface SWGValueObject : SWGObject

/* Timestamp for the measurement event in epoch time (unixtime) 
 */
@property(nonatomic) NSNumber* timestamp;
/* Measurement value 
 */
@property(nonatomic) NSNumber* value;
/* Optional note to include with the measurement [optional]
 */
@property(nonatomic) NSString* note;

@end
