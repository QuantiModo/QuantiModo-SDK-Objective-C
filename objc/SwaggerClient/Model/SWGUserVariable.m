#import "SWGUserVariable.h"

@implementation SWGUserVariable

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"parentId": @"parentId", @"userId": @"userId", @"clientId": @"clientId", @"variableId": @"variableId", @"defaultUnitId": @"defaultUnitId", @"minimumAllowedValue": @"minimumAllowedValue", @"maximumAllowedValue": @"maximumAllowedValue", @"fillingValue": @"fillingValue", @"joinWith": @"joinWith", @"onsetDelay": @"onsetDelay", @"durationOfAction": @"durationOfAction", @"variableCategoryId": @"variableCategoryId", @"updated": @"updated", @"public": @"public", @"causeOnly": @"causeOnly", @"fillingType": @"fillingType", @"numberOfMeasurements": @"numberOfMeasurements", @"numberOfProcessedDailyMeasurements": @"numberOfProcessedDailyMeasurements", @"measurementsAtLastAnalysis": @"measurementsAtLastAnalysis", @"lastUnitId": @"lastUnitId", @"lastOriginalUnitId": @"lastOriginalUnitId", @"lastValue": @"lastValue", @"lastOriginalValue": @"lastOriginalValue", @"numberOfCorrelations": @"numberOfCorrelations", @"status": @"status", @"errorMessage": @"errorMessage", @"lastSuccessfulUpdateTime": @"lastSuccessfulUpdateTime", @"standardDeviation": @"standard_deviation", @"variance": @"variance", @"minimumRecordedValue": @"minimumRecordedValue", @"maximumRecordedDailyValue": @"maximumRecordedDailyValue", @"mean": @"mean", @"median": @"median", @"mostCommonUnitId": @"mostCommonUnitId", @"mostCommonValue": @"mostCommonValue", @"numberOfUniqueDailyValues": @"numberOfUniqueDailyValues", @"numberOfChanges": @"numberOfChanges", @"skewness": @"skewness", @"kurtosis": @"kurtosis", @"latitude": @"latitude", @"longitude": @"longitude", @"location": @"location", @"experimentStartTime": @"experimentStartTime", @"experimentEndTime": @"experimentEndTime", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt", @"outcome": @"outcome", @"sources": @"sources", @"earliestSourceTime": @"earliestSourceTime", @"latestSourceTime": @"latestSourceTime", @"earliestMeasurementTime": @"earliestMeasurementTime", @"latestMeasurementTime": @"latestMeasurementTime", @"earliestFillingTime": @"earliestFillingTime", @"latestFillingTime": @"latestFillingTime", @"imageUrl": @"imageUrl", @"ionIcon": @"ionIcon" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"parentId", @"userId", @"clientId", @"defaultUnitId", @"minimumAllowedValue", @"maximumAllowedValue", @"fillingValue", @"joinWith", @"onsetDelay", @"durationOfAction", @"variableCategoryId", @"updated", @"public", @"causeOnly", @"fillingType", @"numberOfMeasurements", @"numberOfProcessedDailyMeasurements", @"measurementsAtLastAnalysis", @"lastUnitId", @"lastOriginalUnitId", @"lastValue", @"lastOriginalValue", @"numberOfCorrelations", @"status", @"errorMessage", @"lastSuccessfulUpdateTime", @"standardDeviation", @"variance", @"minimumRecordedValue", @"maximumRecordedDailyValue", @"mean", @"median", @"mostCommonUnitId", @"mostCommonValue", @"numberOfUniqueDailyValues", @"numberOfChanges", @"skewness", @"kurtosis", @"latitude", @"longitude", @"location", @"experimentStartTime", @"experimentEndTime", @"createdAt", @"updatedAt", @"outcome", @"sources", @"earliestSourceTime", @"latestSourceTime", @"earliestMeasurementTime", @"latestMeasurementTime", @"earliestFillingTime", @"latestFillingTime", @"imageUrl", @"ionIcon"];
  return [optionalProperties containsObject:propertyName];
}

@end
