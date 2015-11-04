#import "SWGCorrelation.h"

@implementation SWGCorrelation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"timestamp": @"timestamp", @"user_id": @"userId", @"correlation": @"correlation", @"cause_id": @"causeId", @"effect_id": @"effectId", @"onset_delay": @"onsetDelay", @"duration_of_action": @"durationOfAction", @"number_of_pairs": @"numberOfPairs", @"value_predicting_high_outcome": @"valuePredictingHighOutcome", @"value_predicting_low_outcome": @"valuePredictingLowOutcome", @"optimal_pearson_product": @"optimalPearsonProduct", @"vote": @"vote", @"statistical_significance": @"statisticalSignificance", @"cause_unit": @"causeUnit", @"cause_unit_id": @"causeUnitId", @"cause_changes": @"causeChanges", @"effect_changes": @"effectChanges", @"qm_score": @"qmScore", @"error": @"error", @"created_at": @"createdAt", @"updated_at": @"updatedAt", @"reverse_pearson_correlation_coefficient": @"reversePearsonCorrelationCoefficient", @"predictive_pearson_correlation_coefficient": @"predictivePearsonCorrelationCoefficient" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"createdAt", @"updatedAt", ];

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
