#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* QuantiModo
* QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do), check out our [docs](https://github.com/QuantiModo/docs) or contact us at [help.quantimo.do](https://help.quantimo.do). 
*
* OpenAPI spec version: 2.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/



@protocol SWGTrackingReminderNotification
@end

@interface SWGTrackingReminderNotification : SWGObject

/* id for the specific PENDING tracking remidner 
 */
@property(nonatomic) NSNumber* _id;
/* id for the repeating tracking remidner 
 */
@property(nonatomic) NSNumber* trackingReminderId;
/* clientId [optional]
 */
@property(nonatomic) NSString* clientId;
/* ID of User [optional]
 */
@property(nonatomic) NSNumber* userId;
/* Id for the variable to be tracked [optional]
 */
@property(nonatomic) NSNumber* variableId;
/* UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. [optional]
 */
@property(nonatomic) NSDate* pendingReminderTime;
/* Default value to use for the measurement when tracking [optional]
 */
@property(nonatomic) NSNumber* defaultValue;
/* String identifier for the sound to accompany the reminder [optional]
 */
@property(nonatomic) NSString* reminderSound;
/* True if the reminders should appear as a popup notification [optional]
 */
@property(nonatomic) NSNumber* popUp;
/* True if the reminders should be delivered via SMS [optional]
 */
@property(nonatomic) NSNumber* sms;
/* True if the reminders should be delivered via email [optional]
 */
@property(nonatomic) NSNumber* email;
/* True if the reminders should appear in the notification bar [optional]
 */
@property(nonatomic) NSNumber* notificationBar;
/* When the record in the database was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local. [optional]
 */
@property(nonatomic) NSDate* updatedAt;
/* Name of the variable to be used when sending measurements [optional]
 */
@property(nonatomic) NSString* variableName;
/* Name of the variable category to be used when sending measurements [optional]
 */
@property(nonatomic) NSString* variableCategoryName;
/* Abbreviated name of the unit to be used when sending measurements [optional]
 */
@property(nonatomic) NSString* unitAbbreviatedName;
/* The way multiple measurements are aggregated over time [optional]
 */
@property(nonatomic) NSString* combinationOperation;

@end
