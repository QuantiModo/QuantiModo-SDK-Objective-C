#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGMeasurementRange
@end

@interface SWGMeasurementRange : SWGObject

/* The timestamp of the earliest measurement for a user. 
 */
@property(nonatomic) NSNumber* lowerLimit;
/* The timestamp of the most recent measurement for a user. [optional]
 */
@property(nonatomic) NSNumber* upperLimit;

@end
