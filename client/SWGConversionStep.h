#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGConversionStep
@end
  
@interface SWGConversionStep : SWGObject

/* ADD or MULTIPLY 
 */
@property(nonatomic) NSString* operation;
/* This specifies the order of conversion steps starting with 0 
 */
@property(nonatomic) NSNumber* value;

@end
