#import "SWGVariableCategory.h"

@implementation SWGVariableCategory

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"filling_value": @"fillingValue", @"maximum_allowed_value": @"maximumAllowedValue", @"minimum_allowed_value": @"minimumAllowedValue", @"duration_of_action": @"durationOfAction", @"onset_delay": @"onsetDelay", @"combination_operation": @"combinationOperation", @"updated": @"updated", @"cause_only": @"causeOnly", @"public": @"public", @"outcome": @"outcome", @"created_at": @"createdAt", @"updated_at": @"updatedAt", @"image_url": @"imageUrl", @"default_unit_id": @"defaultUnitId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"fillingValue", @"maximumAllowedValue", @"minimumAllowedValue", @"durationOfAction", @"onsetDelay", @"combinationOperation", @"updated", @"causeOnly", @"public", @"outcome", @"createdAt", @"updatedAt", @"imageUrl", @"defaultUnitId"];

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
