#import "SWGCorrelation.h"

@implementation SWGCorrelation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"correlationCoefficient": @"correlationCoefficient", @"cause": @"cause", @"effect": @"effect", @"onsetDelay": @"onsetDelay", @"durationOfAction": @"durationOfAction", @"numberOfPairs": @"numberOfPairs", @"effectSize": @"effectSize", @"statisticalSignificance": @"statisticalSignificance", @"timestamp": @"timestamp", @"reverseCorrelation": @"reverseCorrelation", @"causalityFactor": @"causalityFactor", @"causeCategory": @"causeCategory", @"effectCategory": @"effectCategory" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"effectSize", @"statisticalSignificance", @"reverseCorrelation", @"causalityFactor", @"causeCategory", @"effectCategory"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
