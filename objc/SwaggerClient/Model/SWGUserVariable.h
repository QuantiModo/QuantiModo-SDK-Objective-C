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



@protocol SWGUserVariable
@end

@interface SWGUserVariable : SWGObject

/* ID of the parent variable if this variable has any parent [optional]
 */
@property(nonatomic) NSNumber* parentId;
/* User ID [optional]
 */
@property(nonatomic) NSNumber* userId;
/* clientId [optional]
 */
@property(nonatomic) NSString* clientId;
/* ID of variable 
 */
@property(nonatomic) NSNumber* variableId;
/* ID of unit to use for this variable [optional]
 */
@property(nonatomic) NSNumber* defaultUnitId;
/* The minimum allowed value for measurements. While you can record a value below this minimum, it will be excluded from the correlation analysis. [optional]
 */
@property(nonatomic) NSNumber* minimumAllowedValue;
/* The maximum allowed value for measurements. While you can record a value above this maximum, it will be excluded from the correlation analysis. [optional]
 */
@property(nonatomic) NSNumber* maximumAllowedValue;
/* When it comes to analysis to determine the effects of this variable, knowing when it did not occur is as important as knowing when it did occur. For example, if you are tracking a medication, it is important to know when you did not take it, but you do not have to log zero values for all the days when you haven't taken it. Hence, you can specify a filling value (typically 0) to insert whenever data is missing. [optional]
 */
@property(nonatomic) NSNumber* fillingValue;
/* The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables [optional]
 */
@property(nonatomic) NSNumber* joinWith;
/* The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. [optional]
 */
@property(nonatomic) NSNumber* onsetDelay;
/* The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. [optional]
 */
@property(nonatomic) NSNumber* durationOfAction;
/* ID of variable category [optional]
 */
@property(nonatomic) NSNumber* variableCategoryId;
/* updated [optional]
 */
@property(nonatomic) NSNumber* updated;
/* Is variable public [optional]
 */
@property(nonatomic) NSNumber* public;
/* A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user [optional]
 */
@property(nonatomic) NSNumber* causeOnly;
/* 0 -> No filling, 1 -> Use filling-value [optional]
 */
@property(nonatomic) NSString* fillingType;
/* Number of measurements [optional]
 */
@property(nonatomic) NSNumber* numberOfMeasurements;
/* Number of processed measurements [optional]
 */
@property(nonatomic) NSNumber* numberOfProcessedDailyMeasurements;
/* Number of measurements at last analysis [optional]
 */
@property(nonatomic) NSNumber* measurementsAtLastAnalysis;
/* ID of last Unit [optional]
 */
@property(nonatomic) NSNumber* lastUnitId;
/* ID of last original Unit [optional]
 */
@property(nonatomic) NSNumber* lastOriginalUnitId;
/* Last Value [optional]
 */
@property(nonatomic) NSNumber* lastValue;
/* Last original value which is stored [optional]
 */
@property(nonatomic) NSNumber* lastOriginalValue;
/* Number of correlations for this variable [optional]
 */
@property(nonatomic) NSNumber* numberOfCorrelations;
/* status [optional]
 */
@property(nonatomic) NSString* status;
/* error_message [optional]
 */
@property(nonatomic) NSString* errorMessage;
/* When this variable or its settings were last updated [optional]
 */
@property(nonatomic) NSDate* lastSuccessfulUpdateTime;
/* Standard deviation [optional]
 */
@property(nonatomic) NSNumber* standardDeviation;
/* Variance [optional]
 */
@property(nonatomic) NSNumber* variance;
/* Minimum recorded value of this variable [optional]
 */
@property(nonatomic) NSNumber* minimumRecordedValue;
/* Maximum recorded daily value of this variable [optional]
 */
@property(nonatomic) NSNumber* maximumRecordedDailyValue;
/* Mean [optional]
 */
@property(nonatomic) NSNumber* mean;
/* Median [optional]
 */
@property(nonatomic) NSNumber* median;
/* Most common Unit ID [optional]
 */
@property(nonatomic) NSNumber* mostCommonUnitId;
/* Most common value [optional]
 */
@property(nonatomic) NSNumber* mostCommonValue;
/* Number of unique daily values [optional]
 */
@property(nonatomic) NSNumber* numberOfUniqueDailyValues;
/* Number of changes [optional]
 */
@property(nonatomic) NSNumber* numberOfChanges;
/* Skewness [optional]
 */
@property(nonatomic) NSNumber* skewness;
/* Kurtosis [optional]
 */
@property(nonatomic) NSNumber* kurtosis;
/* Latitude [optional]
 */
@property(nonatomic) NSNumber* latitude;
/* Longitude [optional]
 */
@property(nonatomic) NSNumber* longitude;
/* Location [optional]
 */
@property(nonatomic) NSString* location;
/* Earliest measurement start_time to be used in analysis. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format [optional]
 */
@property(nonatomic) NSDate* experimentStartTime;
/* Latest measurement start_time to be used in analysis. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format [optional]
 */
@property(nonatomic) NSDate* experimentEndTime;
/* When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format [optional]
 */
@property(nonatomic) NSDate* createdAt;
/* When the record in the database was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format [optional]
 */
@property(nonatomic) NSDate* updatedAt;
/* Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors. These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables [optional]
 */
@property(nonatomic) NSNumber* outcome;
/* Comma-separated list of source names to limit variables to those sources [optional]
 */
@property(nonatomic) NSString* sources;
/* Earliest source time [optional]
 */
@property(nonatomic) NSNumber* earliestSourceTime;
/* Latest source time [optional]
 */
@property(nonatomic) NSNumber* latestSourceTime;
/* Earliest measurement time [optional]
 */
@property(nonatomic) NSNumber* earliestMeasurementTime;
/* Latest measurement time [optional]
 */
@property(nonatomic) NSNumber* latestMeasurementTime;
/* Earliest filling time [optional]
 */
@property(nonatomic) NSNumber* earliestFillingTime;
/* Latest filling time [optional]
 */
@property(nonatomic) NSNumber* latestFillingTime;
/*  [optional]
 */
@property(nonatomic) NSString* imageUrl;
/*  [optional]
 */
@property(nonatomic) NSString* ionIcon;

@end