# SWGCorrelation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**averageDailyLowCause** | **NSNumber*** |  | [optional] 
**averageDailyHighCause** | **NSNumber*** |  | [optional] 
**averageEffect** | **NSNumber*** |  | [optional] 
**averageEffectFollowingHighCause** | **NSNumber*** |  | [optional] 
**averageEffectFollowingLowCause** | **NSNumber*** |  | [optional] 
**averageEffectFollowingHighCauseExplanation** | **NSString*** |  | [optional] 
**averageEffectFollowingLowCauseExplanation** | **NSString*** |  | [optional] 
**averageVote** | **NSNumber*** | Average Vote | [optional] 
**causalityFactor** | **NSNumber*** |  | [optional] 
**cause** | **NSString*** | Variable name of the cause variable for which the user desires correlations. | 
**causeVariableCategoryName** | **NSString*** | Variable category of the cause variable. | [optional] 
**causeChanges** | **NSNumber*** | Number of changes in the predictor variable (a.k.a the number of experiments) | [optional] 
**causeVariableCombinationOperation** | **NSString*** | The way cause measurements are aggregated | [optional] 
**causeVariableImageUrl** | **NSString*** |  | [optional] 
**causeVariableIonIcon** | **NSString*** | For use in Ionic apps | [optional] 
**causeUnit** | **NSString*** | Unit of the predictor variable | [optional] 
**causeVariableDefaultUnitId** | **NSNumber*** | Unit Id of the predictor variable | [optional] 
**causeVariableId** | **NSNumber*** |  | [optional] 
**causeVariableName** | **NSString*** | Variable name of the cause variable for which the user desires correlations. | [optional] 
**correlationCoefficient** | **NSNumber*** | Pearson correlation coefficient between cause and effect measurements | 
**createdAt** | **NSDate*** | When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format | [optional] 
**dataAnalysis** | **NSString*** | How the data was analyzed | [optional] 
**dataSources** | **NSString*** | How the data was obtained | [optional] 
**durationOfAction** | **NSNumber*** | The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | 
**effect** | **NSString*** | Variable name of the effect variable for which the user desires correlations. | 
**effectVariableCategoryName** | **NSString*** | Variable category of the effect variable. | [optional] 
**effectVariableImageUrl** | **NSString*** |  | [optional] 
**effectVariableIonIcon** | **NSString*** | For use in Ionic apps | [optional] 
**effectSize** | **NSString*** | Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. | [optional] 
**effectVariableId** | **NSString*** | Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. | [optional] 
**effectVariableName** | **NSString*** | Variable name of the effect variable for which the user desires correlations. | [optional] 
**gaugeImage** | **NSString*** | Illustrates the strength of the relationship | [optional] 
**imageUrl** | **NSString*** | Large image for Facebook | [optional] 
**numberOfPairs** | **NSNumber*** | Number of points that went into the correlation calculation | 
**onsetDelay** | **NSNumber*** | The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | 
**optimalPearsonProduct** | **NSNumber*** | Optimal Pearson Product | [optional] 
**outcomeDataSources** | **NSString*** | original name of the cause. | [optional] 
**predictorExplanation** | **NSString*** | HIGHER Remeron predicts HIGHER Overall Mood | [optional] 
**principalInvestigator** | **NSString*** | Mike Sinn | [optional] 
**qmScore** | **NSNumber*** | Value representing the significance of the relationship as a function of crowdsourced insights, predictive strength, data quantity, and data quality | [optional] 
**reverseCorrelation** | **NSNumber*** | Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation. | [optional] 
**significanceExplanation** | **NSString*** | Using a two-tailed t-test with alpha &#x3D; 0.05, it was determined that the change... | [optional] 
**statisticalSignificance** | **NSString*** | A function of the effect size and sample size | [optional] 
**strengthLevel** | **NSString*** | weak, moderate, strong | [optional] 
**studyAbstract** | **NSString*** | These data suggest with a high degree of confidence... | [optional] 
**studyBackground** | **NSString*** | In order to reduce suffering through the advancement of human knowledge... | [optional] 
**studyDesign** | **NSString*** | This study is based on data donated by one QuantiModo user... | [optional] 
**studyLimitations** | **NSString*** | As with any human experiment, it was impossible to control for all potentially confounding variables... | [optional] 
**studyLinkDynamic** | **NSString*** | Url for the interactive study within the web app | [optional] 
**studyLinkFacebook** | **NSString*** | Url for sharing the study on Facebook | [optional] 
**studyLinkGoogle** | **NSString*** | Url for sharing the study on Google+ | [optional] 
**studyLinkTwitter** | **NSString*** | Url for sharing the study on Twitter | [optional] 
**studyLinkStatic** | **NSString*** | Url for sharing the statically rendered study on social media | [optional] 
**studyObjective** | **NSString*** | The objective of this study is to determine... | [optional] 
**studyResults** | **NSString*** | This analysis suggests that... | [optional] 
**studyTitle** | **NSString*** | N1 Study HIGHER Remeron predicts HIGHER Overall Mood | [optional] 
**timestamp** | **NSNumber*** | Time at which correlation was calculated | 
**updatedAt** | **NSDate*** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
**userVote** | **NSNumber*** | User Vote | [optional] 
**valuePredictingHighOutcome** | **NSNumber*** | cause value that predicts an above average effect value (in default unit for cause variable) | [optional] 
**valuePredictingHighOutcomeExplanation** | **NSString*** | Overall Mood, on average, 34% HIGHER after around 3.98mg Remeron | [optional] 
**valuePredictingLowOutcome** | **NSNumber*** | cause value that predicts a below average effect value (in default unit for cause variable) | [optional] 
**valuePredictingLowOutcomeExplanation** | **NSString*** | Overall Mood, on average, 4% LOWER after around 0mg Remeron | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


