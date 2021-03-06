#import "SWGVariable.h"

@implementation SWGVariable

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"originalName": @"originalName", @"category": @"category", @"abbreviatedUnitName": @"abbreviatedUnitName", @"abbreviatedUnitId": @"abbreviatedUnitId", @"sources": @"sources", @"minimumValue": @"minimumValue", @"maximumValue": @"maximumValue", @"combinationOperation": @"combinationOperation", @"fillingValue": @"fillingValue", @"joinWith": @"joinWith", @"joinedVariables": @"joinedVariables", @"parent": @"parent", @"subVariables": @"subVariables", @"onsetDelay": @"onsetDelay", @"durationOfAction": @"durationOfAction", @"earliestMeasurementTime": @"earliestMeasurementTime", @"latestMeasurementTime": @"latestMeasurementTime", @"updated": @"updated", @"causeOnly": @"causeOnly", @"numberOfCorrelations": @"numberOfCorrelations", @"outcome": @"outcome", @"measurementsAtLastAnalysis": @"measurementsAtLastAnalysis", @"numberOfMeasurements": @"numberOfMeasurements", @"lastUnit": @"lastUnit", @"lastValue": @"lastValue", @"mostCommonValue": @"mostCommonValue", @"mostCommonUnit": @"mostCommonUnit", @"lastSource": @"lastSource" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", ];

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
