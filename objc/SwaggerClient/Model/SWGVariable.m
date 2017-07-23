#import "SWGVariable.h"

@implementation SWGVariable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"category": @"category", @"unitAbbreviatedName": @"unitAbbreviatedName", @"abbreviatedUnitId": @"abbreviatedUnitId", @"sources": @"sources", @"minimumAllowedValue": @"minimumAllowedValue", @"maximumAllowedValue": @"maximumAllowedValue", @"combinationOperation": @"combinationOperation", @"fillingValue": @"fillingValue", @"joinWith": @"joinWith", @"joinedVariables": @"joinedVariables", @"parent": @"parent", @"subVariables": @"subVariables", @"onsetDelay": @"onsetDelay", @"durationOfAction": @"durationOfAction", @"earliestMeasurementTime": @"earliestMeasurementTime", @"latestMeasurementTime": @"latestMeasurementTime", @"updated": @"updated", @"causeOnly": @"causeOnly", @"numberOfCorrelations": @"numberOfCorrelations", @"outcome": @"outcome", @"rawMeasurementsAtLastAnalysis": @"rawMeasurementsAtLastAnalysis", @"numberOfRawMeasurements": @"numberOfRawMeasurements", @"lastUnit": @"lastUnit", @"lastValue": @"lastValue", @"mostCommonValue": @"mostCommonValue", @"mostCommonUnit": @"mostCommonUnit", @"lastSource": @"lastSource", @"imageUrl": @"imageUrl", @"ionIcon": @"ionIcon" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"imageUrl", @"ionIcon"];
  return [optionalProperties containsObject:propertyName];
}

@end
