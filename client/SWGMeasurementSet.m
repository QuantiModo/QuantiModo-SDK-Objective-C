#import "SWGMeasurementSet.h"

@implementation SWGMeasurementSet
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"measurements": @"measurements", @"name": @"name", @"source": @"source", @"category": @"category", @"combinationOperation": @"combinationOperation", @"unit": @"unit" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"category", @"combinationOperation", ];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

@end
