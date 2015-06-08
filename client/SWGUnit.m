#import "SWGUnit.h"

@implementation SWGUnit
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"abbreviatedName": @"abbreviatedName", @"category": @"category", @"minimum": @"minimum", @"maximum": @"maximum", @"conversionSteps": @"conversionSteps" }];
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
