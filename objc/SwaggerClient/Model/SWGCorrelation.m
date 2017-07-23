#import "SWGCorrelation.h"

@implementation SWGCorrelation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"averageDailyLowCause": @"averageDailyLowCause", @"averageDailyHighCause": @"averageDailyHighCause", @"averageEffect": @"averageEffect", @"averageEffectFollowingHighCause": @"averageEffectFollowingHighCause", @"averageEffectFollowingLowCause": @"averageEffectFollowingLowCause", @"averageEffectFollowingHighCauseExplanation": @"averageEffectFollowingHighCauseExplanation", @"averageEffectFollowingLowCauseExplanation": @"averageEffectFollowingLowCauseExplanation", @"averageVote": @"averageVote", @"causalityFactor": @"causalityFactor", @"cause": @"cause", @"causeVariableCategoryName": @"causeVariableCategoryName", @"causeChanges": @"causeChanges", @"causeVariableCombinationOperation": @"causeVariableCombinationOperation", @"causeVariableImageUrl": @"causeVariableImageUrl", @"causeVariableIonIcon": @"causeVariableIonIcon", @"causeUnit": @"causeUnit", @"causeVariableDefaultUnitId": @"causeVariableDefaultUnitId", @"causeVariableId": @"causeVariableId", @"causeVariableName": @"causeVariableName", @"correlationCoefficient": @"correlationCoefficient", @"createdAt": @"createdAt", @"dataAnalysis": @"dataAnalysis", @"dataSources": @"dataSources", @"durationOfAction": @"durationOfAction", @"effect": @"effect", @"effectVariableCategoryName": @"effectVariableCategoryName", @"effectVariableImageUrl": @"effectVariableImageUrl", @"effectVariableIonIcon": @"effectVariableIonIcon", @"effectSize": @"effectSize", @"effectVariableId": @"effectVariableId", @"effectVariableName": @"effectVariableName", @"gaugeImage": @"gaugeImage", @"imageUrl": @"imageUrl", @"numberOfPairs": @"numberOfPairs", @"onsetDelay": @"onsetDelay", @"optimalPearsonProduct": @"optimalPearsonProduct", @"outcomeDataSources": @"outcomeDataSources", @"predictorExplanation": @"predictorExplanation", @"principalInvestigator": @"principalInvestigator", @"qmScore": @"qmScore", @"reverseCorrelation": @"reverseCorrelation", @"significanceExplanation": @"significanceExplanation", @"statisticalSignificance": @"statisticalSignificance", @"strengthLevel": @"strengthLevel", @"studyAbstract": @"studyAbstract", @"studyBackground": @"studyBackground", @"studyDesign": @"studyDesign", @"studyLimitations": @"studyLimitations", @"studyLinkDynamic": @"studyLinkDynamic", @"studyLinkFacebook": @"studyLinkFacebook", @"studyLinkGoogle": @"studyLinkGoogle", @"studyLinkTwitter": @"studyLinkTwitter", @"studyLinkStatic": @"studyLinkStatic", @"studyObjective": @"studyObjective", @"studyResults": @"studyResults", @"studyTitle": @"studyTitle", @"timestamp": @"timestamp", @"updatedAt": @"updatedAt", @"userVote": @"userVote", @"valuePredictingHighOutcome": @"valuePredictingHighOutcome", @"valuePredictingHighOutcomeExplanation": @"valuePredictingHighOutcomeExplanation", @"valuePredictingLowOutcome": @"valuePredictingLowOutcome", @"valuePredictingLowOutcomeExplanation": @"valuePredictingLowOutcomeExplanation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"averageDailyLowCause", @"averageDailyHighCause", @"averageEffect", @"averageEffectFollowingHighCause", @"averageEffectFollowingLowCause", @"averageEffectFollowingHighCauseExplanation", @"averageEffectFollowingLowCauseExplanation", @"averageVote", @"causalityFactor", @"causeVariableCategoryName", @"causeChanges", @"causeVariableCombinationOperation", @"causeVariableImageUrl", @"causeVariableIonIcon", @"causeUnit", @"causeVariableDefaultUnitId", @"causeVariableId", @"causeVariableName", @"createdAt", @"dataAnalysis", @"dataSources", @"effectVariableCategoryName", @"effectVariableImageUrl", @"effectVariableIonIcon", @"effectSize", @"effectVariableId", @"effectVariableName", @"gaugeImage", @"imageUrl", @"optimalPearsonProduct", @"outcomeDataSources", @"predictorExplanation", @"principalInvestigator", @"qmScore", @"reverseCorrelation", @"significanceExplanation", @"statisticalSignificance", @"strengthLevel", @"studyAbstract", @"studyBackground", @"studyDesign", @"studyLimitations", @"studyLinkDynamic", @"studyLinkFacebook", @"studyLinkGoogle", @"studyLinkTwitter", @"studyLinkStatic", @"studyObjective", @"studyResults", @"studyTitle", @"updatedAt", @"userVote", @"valuePredictingHighOutcome", @"valuePredictingHighOutcomeExplanation", @"valuePredictingLowOutcome", @"valuePredictingLowOutcomeExplanation"];
  return [optionalProperties containsObject:propertyName];
}

@end
