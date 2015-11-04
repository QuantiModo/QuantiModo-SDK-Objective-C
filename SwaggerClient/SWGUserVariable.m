#import "SWGUserVariable.h"

@implementation SWGUserVariable

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"parent_id": @"parentId", @"client_id": @"clientId", @"variable_id": @"variableId", @"default_unit_id": @"defaultUnitId", @"minimum_allowed_value": @"minimumAllowedValue", @"maximum_allowed_value": @"maximumAllowedValue", @"filling_value": @"fillingValue", @"join_with": @"joinWith", @"onset_delay": @"onsetDelay", @"duration_of_action": @"durationOfAction", @"variable_category_id": @"variableCategoryId", @"updated": @"updated", @"public": @"public", @"cause_only": @"causeOnly", @"filling_type": @"fillingType", @"number_of_measurements": @"numberOfMeasurements", @"number_of_processed_measurements": @"numberOfProcessedMeasurements", @"measurements_at_last_analysis": @"measurementsAtLastAnalysis", @"last_unit_id": @"lastUnitId", @"last_original_unit_id": @"lastOriginalUnitId", @"last_value": @"lastValue", @"last_original_value": @"lastOriginalValue", @"last_source_id": @"lastSourceId", @"number_of_correlations": @"numberOfCorrelations", @"status": @"status", @"error_message": @"errorMessage", @"last_successful_update_time": @"lastSuccessfulUpdateTime", @"standard_deviation": @"standardDeviation", @"variance": @"variance", @"minimum_recorded_daily_value": @"minimumRecordedDailyValue", @"maximum_recorded_daily_value": @"maximumRecordedDailyValue", @"mean": @"mean", @"median": @"median", @"most_common_unit_id": @"mostCommonUnitId", @"most_common_value": @"mostCommonValue", @"number_of_unique_daily_values": @"numberOfUniqueDailyValues", @"number_of_changes": @"numberOfChanges", @"skewness": @"skewness", @"kurtosis": @"kurtosis", @"latitude": @"latitude", @"longitude": @"longitude", @"location": @"location", @"created_at": @"createdAt", @"updated_at": @"updatedAt", @"outcome": @"outcome", @"sources": @"sources", @"earliest_source_time": @"earliestSourceTime", @"latest_source_time": @"latestSourceTime", @"earliest_measurement_time": @"earliestMeasurementTime", @"latest_measurement_time": @"latestMeasurementTime", @"earliest_filling_time": @"earliestFillingTime", @"latest_filling_time": @"latestFillingTime" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"parentId", @"clientId", @"defaultUnitId", @"minimumAllowedValue", @"maximumAllowedValue", @"fillingValue", @"joinWith", @"onsetDelay", @"durationOfAction", @"variableCategoryId", @"updated", @"public", @"causeOnly", @"fillingType", @"numberOfMeasurements", @"numberOfProcessedMeasurements", @"measurementsAtLastAnalysis", @"lastUnitId", @"lastOriginalUnitId", @"lastValue", @"lastOriginalValue", @"lastSourceId", @"numberOfCorrelations", @"status", @"errorMessage", @"lastSuccessfulUpdateTime", @"standardDeviation", @"variance", @"minimumRecordedDailyValue", @"maximumRecordedDailyValue", @"mean", @"median", @"mostCommonUnitId", @"mostCommonValue", @"numberOfUniqueDailyValues", @"numberOfChanges", @"skewness", @"kurtosis", @"latitude", @"longitude", @"location", @"createdAt", @"updatedAt", @"outcome", @"sources", @"earliestSourceTime", @"latestSourceTime", @"earliestMeasurementTime", @"latestMeasurementTime", @"earliestFillingTime", @"latestFillingTime"];

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
