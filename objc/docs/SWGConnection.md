# SWGConnection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** | id | [optional] 
**userId** | **NSNumber*** | ID of user that owns this correlation | [optional] 
**connectorId** | **NSNumber*** | The id for the connector data source for which the connection is connected | 
**connectStatus** | **NSString*** | Indicates whether a connector is currently connected to a service for a user. | [optional] 
**connectError** | **NSString*** | Error message if there is a problem with authorizing this connection. | [optional] 
**updateRequestedAt** | **NSDate*** | Time at which an update was requested by a user. | [optional] 
**updateStatus** | **NSString*** | Indicates whether a connector is currently updated. | [optional] 
**updateError** | **NSString*** | Indicates if there was an error during the update. | [optional] 
**lastSuccessfulUpdatedAt** | **NSDate*** | The time at which the connector was last successfully updated. | [optional] 
**createdAt** | **NSDate*** | When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format | [optional] 
**updatedAt** | **NSDate*** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


