#import "SWGMeasurement.h"

@implementation SWGMeasurement
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"variable": @"variable", @"source": @"source", @"timestamp": @"timestamp", @"value": @"value", @"unit": @"unit", @"storedValue": @"storedValue", @"storedUnit": @"storedUnit" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"storedValue", @"storedUnit"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

@end
