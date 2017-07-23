# SWGTrackingReminderNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | id for the specific PENDING tracking remidner | 
**trackingReminderId** | **NSNumber*** | id for the repeating tracking remidner | 
**clientId** | **NSString*** | clientId | [optional] 
**userId** | **NSNumber*** | ID of User | [optional] 
**variableId** | **NSNumber*** | Id for the variable to be tracked | [optional] 
**pendingReminderTime** | **NSDate*** | UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. | [optional] 
**defaultValue** | **NSNumber*** | Default value to use for the measurement when tracking | [optional] 
**reminderSound** | **NSString*** | String identifier for the sound to accompany the reminder | [optional] 
**popUp** | **NSNumber*** | True if the reminders should appear as a popup notification | [optional] 
**sms** | **NSNumber*** | True if the reminders should be delivered via SMS | [optional] 
**email** | **NSNumber*** | True if the reminders should be delivered via email | [optional] 
**notificationBar** | **NSNumber*** | True if the reminders should appear in the notification bar | [optional] 
**updatedAt** | **NSDate*** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
**variableName** | **NSString*** | Name of the variable to be used when sending measurements | [optional] 
**variableCategoryName** | **NSString*** | Name of the variable category to be used when sending measurements | [optional] 
**unitAbbreviatedName** | **NSString*** | Abbreviated name of the unit to be used when sending measurements | [optional] 
**combinationOperation** | **NSString*** | The way multiple measurements are aggregated over time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


