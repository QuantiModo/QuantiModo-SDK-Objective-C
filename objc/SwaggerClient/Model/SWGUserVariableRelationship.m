#import "SWGUserVariableRelationship.h"

@implementation SWGUserVariableRelationship

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"confidenceLevel": @"confidence_level", @"confidenceScore": @"confidence_score", @"direction": @"direction", @"durationOfAction": @"duration_of_action", @"errorMessage": @"error_message", @"onsetDelay": @"onset_delay", @"outcomeVariableId": @"outcome_variableId", @"predictorVariableId": @"predictor_variableId", @"predictorUnitId": @"predictor_unit_id", @"sinnRank": @"sinn_rank", @"strengthLevel": @"strength_level", @"strengthScore": @"strength_score", @"userId": @"userId", @"vote": @"vote", @"valuePredictingHighOutcome": @"value_predicting_high_outcome", @"valuePredictingLowOutcome": @"value_predicting_low_outcome" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"errorMessage", @"onsetDelay", @"userId", @"vote", ];
  return [optionalProperties containsObject:propertyName];
}

@end
