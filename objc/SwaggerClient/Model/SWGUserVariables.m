#import "SWGUserVariables.h"

@implementation SWGUserVariables

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"user": @"user", @"variableId": @"variableId", @"durationOfAction": @"durationOfAction", @"fillingValue": @"fillingValue", @"joinWith": @"joinWith", @"maximumAllowedValue": @"maximumAllowedValue", @"minimumAllowedValue": @"minimumAllowedValue", @"onsetDelay": @"onsetDelay", @"experimentStartTime": @"experimentStartTime", @"experimentEndTime": @"experimentEndTime", @"alias": @"alias" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"durationOfAction", @"fillingValue", @"joinWith", @"maximumAllowedValue", @"minimumAllowedValue", @"onsetDelay", @"experimentStartTime", @"experimentEndTime", @"alias"];
  return [optionalProperties containsObject:propertyName];
}

@end
