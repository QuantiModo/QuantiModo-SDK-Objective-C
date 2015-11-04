#import "SWGMeasurement.h"

@implementation SWGMeasurement

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"user_id": @"userId", @"client_id": @"clientId", @"connector_id": @"connectorId", @"variable_id": @"variableId", @"source_id": @"sourceId", @"start_time": @"startTime", @"value": @"value", @"unit_id": @"unitId", @"original_value": @"originalValue", @"original_unit_id": @"originalUnitId", @"duration": @"duration", @"note": @"note", @"latitude": @"latitude", @"longitude": @"longitude", @"location": @"location", @"created_at": @"createdAt", @"updated_at": @"updatedAt", @"error": @"error" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"userId", @"clientId", @"connectorId", @"originalValue", @"originalUnitId", @"duration", @"note", @"latitude", @"longitude", @"location", @"createdAt", @"updatedAt", @"error"];

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
