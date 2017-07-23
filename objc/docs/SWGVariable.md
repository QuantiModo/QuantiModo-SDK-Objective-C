# SWGVariable

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | Variable ID | [optional] 
**name** | **NSString*** | User-defined variable display name. | 
**category** | **NSString*** | Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. | 
**unitAbbreviatedName** | **NSString*** | Abbreviated name of the default unit for the variable | 
**abbreviatedUnitId** | **NSNumber*** | Id of the default unit for the variable | 
**sources** | **NSString*** | Comma-separated list of source names to limit variables to those sources | 
**minimumAllowedValue** | **NSNumber*** | The minimum allowed value for measurements. While you can record a value below this minimum, it will be excluded from the correlation analysis. | 
**maximumAllowedValue** | **NSNumber*** | The maximum allowed value for measurements. While you can record a value above this maximum, it will be excluded from the correlation analysis. | 
**combinationOperation** | **NSString*** | Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot;. SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. | 
**fillingValue** | **NSNumber*** | When it comes to analysis to determine the effects of this variable, knowing when it did not occur is as important as knowing when it did occur. For example, if you are tracking a medication, it is important to know when you did not take it, but you do not have to log zero values for all the days when you haven&#39;t taken it. Hence, you can specify a filling value (typically 0) to insert whenever data is missing. | 
**joinWith** | **NSString*** | The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables. | 
**joinedVariables** | [**NSArray&lt;SWGVariable&gt;***](SWGVariable.md) | Array of Variables that are joined with this Variable | 
**parent** | **NSNumber*** | Id of the parent variable if this variable has any parent | 
**subVariables** | [**NSArray&lt;SWGVariable&gt;***](SWGVariable.md) | Array of Variables that are sub variables to this Variable | 
**onsetDelay** | **NSNumber*** | The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | 
**durationOfAction** | **NSNumber*** | The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | 
**earliestMeasurementTime** | **NSNumber*** | Earliest measurement time | 
**latestMeasurementTime** | **NSNumber*** | Latest measurement time | 
**updated** | **NSNumber*** | When this variable or its settings were last updated | 
**causeOnly** | **NSNumber*** | A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user. | 
**numberOfCorrelations** | **NSNumber*** | Number of correlations | 
**outcome** | **NSNumber*** | Outcome variables (those with &#x60;outcome&#x60; &#x3D;&#x3D; 1) are variables for which a human would generally want to identify the influencing factors. These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables. | 
**rawMeasurementsAtLastAnalysis** | **NSNumber*** | The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the rawMeasurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there&#39;s not enough new data to make a significant difference in the correlation. | 
**numberOfRawMeasurements** | **NSNumber*** | Number of measurements | 
**lastUnit** | **NSString*** | Last unit | 
**lastValue** | **NSNumber*** | Last value | 
**mostCommonValue** | **NSNumber*** | Most common value | 
**mostCommonUnit** | **NSString*** | Most common unit | 
**lastSource** | **NSNumber*** | Last source | 
**imageUrl** | **NSString*** |  | [optional] 
**ionIcon** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


