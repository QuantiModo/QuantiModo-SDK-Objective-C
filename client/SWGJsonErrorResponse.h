#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGJsonErrorResponse
@end
  
@interface SWGJsonErrorResponse : SWGObject

/* Status: \"ok\" or \"error\" 
 */
@property(nonatomic) NSString* status;
/* Error message [optional]
 */
@property(nonatomic) NSString* message;

@end
