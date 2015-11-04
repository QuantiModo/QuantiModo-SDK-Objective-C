#import "SWGVariable.h"

@implementation SWGVariable

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"client_id": @"clientId", @"parent_id": @"parentId", @"name": @"name", @"variable_category_id": @"variableCategoryId", @"default_unit_id": @"defaultUnitId", @"combination_operation": @"combinationOperation", @"filling_value": @"fillingValue", @"maximum_allowed_value": @"maximumAllowedValue", @"minimum_allowed_value": @"minimumAllowedValue", @"onset_delay": @"onsetDelay", @"duration_of_action": @"durationOfAction", @"public": @"public", @"cause_only": @"causeOnly", @"most_common_value": @"mostCommonValue", @"most_common_unit_id": @"mostCommonUnitId", @"standard_deviation": @"standardDeviation", @"variance": @"variance", @"mean": @"mean", @"median": @"median", @"number_of_measurements": @"numberOfMeasurements", @"number_of_unique_values": @"numberOfUniqueValues", @"skewness": @"skewness", @"kurtosis": @"kurtosis", @"status": @"status", @"error_message": @"errorMessage", @"last_successful_update_time": @"lastSuccessfulUpdateTime", @"created_at": @"createdAt", @"updated_at": @"updatedAt", @"product_url": @"productUrl", @"image_url": @"imageUrl", @"price": @"price", @"number_of_user_variables": @"numberOfUserVariables", @"outcome": @"outcome", @"minimum_recorded_value": @"minimumRecordedValue", @"maximum_recorded_value": @"maximumRecordedValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"clientId", @"parentId", @"combinationOperation", @"fillingValue", @"maximumAllowedValue", @"minimumAllowedValue", @"onsetDelay", @"durationOfAction", @"public", @"causeOnly", @"mostCommonValue", @"mostCommonUnitId", @"standardDeviation", @"variance", @"mean", @"median", @"numberOfMeasurements", @"numberOfUniqueValues", @"skewness", @"kurtosis", @"status", @"errorMessage", @"lastSuccessfulUpdateTime", @"createdAt", @"updatedAt", @"productUrl", @"imageUrl", @"price", @"numberOfUserVariables", @"outcome", @"minimumRecordedValue", @"maximumRecordedValue"];

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
