#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGConnectorInfoHistoryItem.h"


@protocol SWGConnectorInfo
@end

@interface SWGConnectorInfo : SWGObject

/* Connector ID number 
 */
@property(nonatomic) NSNumber* _id;
/* True if the authenticated user has this connector enabled 
 */
@property(nonatomic) NSNumber* connected;
/* Error message. Empty if connected. 
 */
@property(nonatomic) NSString* error;

@property(nonatomic) NSArray<SWGConnectorInfoHistoryItem>* history;

@end
