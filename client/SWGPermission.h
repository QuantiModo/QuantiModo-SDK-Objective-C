#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGPermission
@end
  
@interface SWGPermission : SWGObject

/* Grant permission to target user or public so they may access measurements within the given parameters. TODO: Rename target to something more intuitive. 
 */
@property(nonatomic) NSNumber* target;
/* ORIGINAL Variable name 
 */
@property(nonatomic) NSString* variableName;
/* Earliest time when measurements will be accessible in epoch seconds 
 */
@property(nonatomic) NSNumber* minTimestamp;
/* Latest time when measurements will be accessible in epoch seconds 
 */
@property(nonatomic) NSNumber* maxTimestamp;
/* Earliest time of day when measurements will be accessible in epoch seconds 
 */
@property(nonatomic) NSNumber* minTimeOfDay;
/* Latest time of day when measurements will be accessible in epoch seconds 
 */
@property(nonatomic) NSNumber* maxTimeOfDay;
/* Maybe specifies if only weekday measurements should be accessible 
 */
@property(nonatomic) NSString* week;

@end
