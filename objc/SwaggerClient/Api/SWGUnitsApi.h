#import <Foundation/Foundation.h>
#import "SWGUnit.h"
#import "SWGUnitCategory.h"
#import "SWGApi.h"

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


@interface SWGUnitsApi: NSObject <SWGApi>

extern NSString* kSWGUnitsApiErrorDomain;
extern NSInteger kSWGUnitsApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Get unit categories
/// Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.
///
/// 
///  code:200 message:"Successful operation",
///  code:401 message:"Not Authenticated"
///
/// @return SWGUnitCategory*
-(NSNumber*) v1UnitCategoriesGetWithCompletionHandler: 
    (void (^)(SWGUnitCategory* output, NSError* error)) handler;


/// Get all available units
/// Get all available units
///
/// @param accessToken User&#39;s OAuth2 access token (optional)
/// @param userId User&#39;s id (optional)
/// @param _id Unit id (optional)
/// @param unitName Unit name (optional)
/// @param unitAbbreviatedName Restrict the results to a specific unit by providing the unit abbreviation. (optional)
/// @param unitCategoryName Restrict the results to a specific unit category by providing the unit category name. (optional)
/// 
///  code:200 message:"Successful operation",
///  code:401 message:"Not Authenticated"
///
/// @return NSArray<SWGUnit>*
-(NSNumber*) v1UnitsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    _id: (NSNumber*) _id
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
    completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler;


/// Units for Variable
/// Get a list of all possible units to use for a given variable
///
/// @param accessToken User&#39;s OAuth2 access token (optional)
/// @param userId User&#39;s id (optional)
/// @param unitName Name of Unit you want to retrieve (optional)
/// @param unitAbbreviatedName Abbreviated Unit Name of the unit you want (optional)
/// @param unitCategoryName Name of the category you want units for (optional)
/// @param variable Name of the variable you want units for (optional)
/// 
///  code:200 message:"Successful operation",
///  code:401 message:"Not Authenticated"
///
/// @return NSArray<SWGUnit>*
-(NSNumber*) v1UnitsVariableGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    unitName: (NSString*) unitName
    unitAbbreviatedName: (NSString*) unitAbbreviatedName
    unitCategoryName: (NSString*) unitCategoryName
    variable: (NSString*) variable
    completionHandler: (void (^)(NSArray<SWGUnit>* output, NSError* error)) handler;



@end
