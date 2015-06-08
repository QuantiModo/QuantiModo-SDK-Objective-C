#import "SWGPostCorrelation.h"

@implementation SWGPostCorrelation
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cause": @"cause", @"effect": @"effect", @"correlation": @"correlation", @"vote": @"vote" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"vote"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

@end
