#import "SWGMeasurement.h"

@implementation SWGMeasurement

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"variable": @"variable", @"source": @"source", @"timestamp": @"timestamp", @"startTime": @"startTime", @"humanTime": @"humanTime", @"value": @"value", @"unit": @"unit", @"originalValue": @"originalValue", @"storedValue": @"storedValue", @"storedAbbreviatedUnitName": @"storedAbbreviatedUnitName", @"originalAbbreviatedUnitName": @"originalAbbreviatedUnitName", @"abbreviatedUnitName": @"abbreviatedUnitName", @"note": @"note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"startTime", @"humanTime", @"originalValue", @"storedValue", @"storedAbbreviatedUnitName", @"originalAbbreviatedUnitName", @"abbreviatedUnitName", @"note"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
