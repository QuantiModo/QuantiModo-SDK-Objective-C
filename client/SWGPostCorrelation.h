#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGPostCorrelation
@end
  
@interface SWGPostCorrelation : SWGObject

/* Cause variable name 
 */
@property(nonatomic) NSString* cause;
/* Effect variable name 
 */
@property(nonatomic) NSString* effect;
/* Correlation value 
 */
@property(nonatomic) NSNumber* correlation;
/* Vote: 0 or 1 [optional]
 */
@property(nonatomic) NSNumber* vote;

@end
