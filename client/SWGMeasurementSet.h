#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGValueObject.h"


@protocol SWGMeasurementSet
@end
  
@interface SWGMeasurementSet : SWGObject

/* Array of timestamps, values, and optional notes 
 */
@property(nonatomic) NSArray<SWGValueObject>* measurements;
/* ORIGINAL name of the variable for which we are creating the measurement records 
 */
@property(nonatomic) NSString* name;
/* Name of the application or device used to record the measurement values 
 */
@property(nonatomic) NSString* source;
/* Variable category name [optional]
 */
@property(nonatomic) NSString* category;
/* Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\" [optional]
 */
@property(nonatomic) NSString* combinationOperation;
/* Unit of measurement 
 */
@property(nonatomic) NSString* unit;

@end
