#import "SWGCorrelation.h"

@implementation SWGCorrelation
  
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"correlationCoefficient": @"correlationCoefficient", @"cause": @"cause", @"effect": @"effect", @"onsetDelay": @"onsetDelay", @"durationOfAction": @"durationOfAction", @"numberOfPairs": @"numberOfPairs", @"effectSize": @"effectSize", @"statisticalSignificance": @"statisticalSignificance", @"timestamp": @"timestamp", @"reverseCorrelation": @"reverseCorrelation", @"causalityFactor": @"causalityFactor", @"causeCategory": @"causeCategory", @"effectCategory": @"effectCategory" }];
}

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

@end
