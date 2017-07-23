# SWGTrackingReminder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | id | [optional] 
**clientId** | **NSString*** | clientId | [optional] 
**userId** | **NSNumber*** | ID of User | [optional] 
**variableId** | **NSNumber*** | Id for the variable to be tracked | 
**defaultValue** | **NSNumber*** | Default value to use for the measurement when tracking | 
**reminderStartTime** | **NSString*** | Earliest time of day at which reminders should appear in UTC HH:MM:SS format | [optional] 
**reminderEndTime** | **NSString*** | Latest time of day at which reminders should appear in UTC HH:MM:SS format | [optional] 
**reminderSound** | **NSString*** | String identifier for the sound to accompany the reminder | [optional] 
**reminderFrequency** | **NSNumber*** | Number of seconds between one reminder and the next | 
**popUp** | **NSNumber*** | True if the reminders should appear as a popup notification | [optional] 
**sms** | **NSNumber*** | True if the reminders should be delivered via SMS | [optional] 
**email** | **NSNumber*** | True if the reminders should be delivered via email | [optional] 
**notificationBar** | **NSNumber*** | True if the reminders should appear in the notification bar | [optional] 
**latestTrackingReminderNotificationReminderTime** | **NSDate*** | UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  timestamp for the reminder time of the latest tracking reminder notification that has been pre-emptively generated in the database | [optional] 
**lastTracked** | **NSDate*** | UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  timestamp for the last time a measurement was received for this user and variable | [optional] 
**startTrackingDate** | **NSString*** | Earliest date on which the user should be reminded to track in YYYY-MM-DD format | [optional] 
**stopTrackingDate** | **NSString*** | Latest date on which the user should be reminded to track in YYYY-MM-DD format | [optional] 
**updatedAt** | **NSDate*** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
**variableName** | **NSString*** | Name of the variable to be used when sending measurements | [optional] 
**variableCategoryName** | **NSString*** | Name of the variable category to be used when sending measurements | [optional] 
**unitAbbreviatedName** | **NSString*** | Abbreviated name of the unit to be used when sending measurements | [optional] 
**combinationOperation** | **NSString*** | The way multiple measurements are aggregated over time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


