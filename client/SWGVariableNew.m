#import "SWGVariableNew.h"

@implementation SWGVariableNew
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"category": @"category", @"unit": @"unit", @"combinationOperation": @"combinationOperation", @"parent": @"parent" }];
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
