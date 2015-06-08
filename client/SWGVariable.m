#import "SWGVariable.h"

@implementation SWGVariable
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"originalName": @"originalName", @"category": @"category", @"unit": @"unit", @"sources": @"sources", @"minimumValue": @"minimumValue", @"maximumValue": @"maximumValue", @"combinationOperation": @"combinationOperation", @"fillingValue": @"fillingValue" }];
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
