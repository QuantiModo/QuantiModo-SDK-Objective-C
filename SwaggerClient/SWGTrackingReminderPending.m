#import "SWGTrackingReminderPending.h"

@implementation SWGTrackingReminderPending

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"trackingReminderId": @"trackingReminderId", @"clientId": @"clientId", @"userId": @"userId", @"variableId": @"variableId", @"pendingReminderTime": @"pendingReminderTime", @"defaultValue": @"defaultValue", @"reminderSound": @"reminderSound", @"popUp": @"popUp", @"sms": @"sms", @"email": @"email", @"notificationBar": @"notificationBar", @"updatedAt": @"updatedAt", @"variableName": @"variableName", @"variableCategoryName": @"variableCategoryName", @"abbreviatedUnitName": @"abbreviatedUnitName", @"combinationOperation": @"combinationOperation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"clientId", @"userId", @"variableId", @"pendingReminderTime", @"defaultValue", @"reminderSound", @"popUp", @"sms", @"email", @"notificationBar", @"updatedAt", @"variableName", @"variableCategoryName", @"abbreviatedUnitName", @"combinationOperation"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
