#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGHumanTime.h"


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
/* Start Time for the measurement event in ISO 8601 [optional]
 */
@property(nonatomic) NSString* startTime;
/* Start Time for the measurement event in ISO 8601 [optional]
 */
@property(nonatomic) SWGHumanTime* humanTime;
/* Converted measurement value in requested unit 
 */
@property(nonatomic) NSNumber* value;
/* Unit of measurement as requested in GET request 
 */
@property(nonatomic) NSString* unit;
/* Original value [optional]
 */
@property(nonatomic) NSNumber* originalValue;
/* Measurement value in the unit as orignally submitted [optional]
 */
@property(nonatomic) NSNumber* storedValue;
/* Unit of measurement as originally submitted [optional]
 */
@property(nonatomic) NSString* storedAbbreviatedUnitName;
/* Original Unit of measurement as originally submitted [optional]
 */
@property(nonatomic) NSString* originalAbbreviatedUnitName;
/* Unit of measurement as originally submitted [optional]
 */
@property(nonatomic) NSString* abbreviatedUnitName;
/* Note of measurement [optional]
 */
@property(nonatomic) NSString* note;

@end
