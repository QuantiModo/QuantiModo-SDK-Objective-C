#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGUserTokenRequestInnerUserField.h"


@protocol SWGUserTokenRequest
@end
  
@interface SWGUserTokenRequest : SWGObject


@property(nonatomic) SWGUserTokenRequestInnerUserField* user;
/* Organization Access token 
 */
@property(nonatomic) NSString* organizationAccessToken;

@end
