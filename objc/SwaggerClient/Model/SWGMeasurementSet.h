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

#import "SWGValueObject.h"


@protocol SWGMeasurementSet
@end

@interface SWGMeasurementSet : SWGObject

/* Array of timestamps, values, and optional notes 
 */
@property(nonatomic) NSArray<SWGValueObject>* measurements;
/* ORIGINAL name of the variable for which we are creating the measurement records 
 */
@property(nonatomic) NSString* variableName;
/* Name of the application or device used to record the measurement values 
 */
@property(nonatomic) NSString* sourceName;
/* Variable category name [optional]
 */
@property(nonatomic) NSString* variableCategoryName;
/* Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\". SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. [optional]
 */
@property(nonatomic) NSString* combinationOperation;
/* Unit of measurement 
 */
@property(nonatomic) NSString* unitAbbreviatedName;

@end
