#import "SWGMeasurement.h"

@implementation SWGMeasurement

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"variableName": @"variableName", @"sourceName": @"sourceName", @"startTimeString": @"startTimeString", @"startTimeEpoch": @"startTimeEpoch", @"humanTime": @"humanTime", @"value": @"value", @"originalValue": @"originalValue", @"originalunitAbbreviatedName": @"originalunitAbbreviatedName", @"unitAbbreviatedName": @"unitAbbreviatedName", @"note": @"note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"startTimeEpoch", @"humanTime", @"originalValue", @"originalunitAbbreviatedName", @"note"];
  return [optionalProperties containsObject:propertyName];
}

@end
