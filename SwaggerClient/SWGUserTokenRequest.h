#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGUserTokenRequestInnerUserField.h"


@protocol SWGUserTokenRequest
@end

@interface SWGUserTokenRequest : SWGObject


@property(nonatomic) SWGUserTokenRequestInnerUserField* user;
/* Organization Access token 
 */
@property(nonatomic) NSString* organizationAccessToken;

@end
