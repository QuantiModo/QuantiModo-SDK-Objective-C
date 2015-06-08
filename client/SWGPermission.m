#import "SWGPermission.h"

@implementation SWGPermission
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"target": @"target", @"variableName": @"variableName", @"min_timestamp": @"minTimestamp", @"max_timestamp": @"maxTimestamp", @"min_time_of_day": @"minTimeOfDay", @"max_time_of_day": @"maxTimeOfDay", @"week": @"week" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

@end
