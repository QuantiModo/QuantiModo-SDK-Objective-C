# SWGMeasurement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variableName** | **NSString*** | Name of the variable for which we are creating the measurement records | 
**sourceName** | **NSString*** | Application or device used to record the measurement values | 
**startTimeString** | **NSString*** | Start Time for the measurement event in UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; | 
**startTimeEpoch** | **NSNumber*** | Seconds between the start of the event measured and 1970 (Unix timestamp) | [optional] 
**humanTime** | [**SWGHumanTime***](SWGHumanTime.md) |  | [optional] 
**value** | **NSNumber*** | Converted measurement value in requested unit | 
**originalValue** | **NSNumber*** | Original value as originally submitted | [optional] 
**originalunitAbbreviatedName** | **NSString*** | Original Unit of measurement as originally submitted | [optional] 
**unitAbbreviatedName** | **NSString*** | Abbreviated name for the unit of measurement | 
**note** | **NSString*** | Note of measurement | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


