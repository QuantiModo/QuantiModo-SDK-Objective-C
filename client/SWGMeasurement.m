#import "SWGMeasurement.h"

@implementation SWGMeasurement
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"variable": @"variable", @"source": @"source", @"timestamp": @"timestamp", @"value": @"value", @"unit": @"unit", @"note": @"note" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"note"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

@end
