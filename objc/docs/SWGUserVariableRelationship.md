# SWGUserVariableRelationship

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | id | [optional] 
**confidenceLevel** | **NSString*** | Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors | 
**confidenceScore** | **NSNumber*** | A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors | 
**direction** | **NSString*** | Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values. | 
**durationOfAction** | **NSNumber*** | The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | 
**errorMessage** | **NSString*** | error_message | [optional] 
**onsetDelay** | **NSNumber*** | The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | [optional] 
**outcomeVariableId** | **NSNumber*** | Variable ID for the outcome variable | 
**predictorVariableId** | **NSNumber*** | Variable ID for the predictor variable | 
**predictorUnitId** | **NSNumber*** | ID for default unit of the predictor variable | 
**sinnRank** | **NSNumber*** | A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting. | 
**strengthLevel** | **NSString*** | Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores. | 
**strengthScore** | **NSNumber*** | A value represented to the size of the effect which the predictor appears to have on the outcome. | 
**userId** | **NSNumber*** | userId | [optional] 
**vote** | **NSString*** | vote | [optional] 
**valuePredictingHighOutcome** | **NSNumber*** | Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value | 
**valuePredictingLowOutcome** | **NSNumber*** | Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


