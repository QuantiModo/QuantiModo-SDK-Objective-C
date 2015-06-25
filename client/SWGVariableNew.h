#import <Foundation/Foundation.h>
#import "SWGObject.h"


@protocol SWGVariableNew
@end
  
@interface SWGVariableNew : SWGObject

/* User-defined variable display name. 
 */
@property(nonatomic) NSString* name;
/* Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. 
 */
@property(nonatomic) NSString* category;
/* Abbreviated name of the default unit for the variable 
 */
@property(nonatomic) NSString* unit;
/* How to aggregate measurements over time. 
 */
@property(nonatomic) NSString* combinationOperation;
/* Parent 
 */
@property(nonatomic) NSString* parent;

@end
