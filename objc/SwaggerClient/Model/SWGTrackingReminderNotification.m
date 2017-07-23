#import "SWGTrackingReminderNotification.h"

@implementation SWGTrackingReminderNotification

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"trackingReminderId": @"trackingReminderId", @"clientId": @"clientId", @"userId": @"userId", @"variableId": @"variableId", @"pendingReminderTime": @"pendingReminderTime", @"defaultValue": @"defaultValue", @"reminderSound": @"reminderSound", @"popUp": @"popUp", @"sms": @"sms", @"email": @"email", @"notificationBar": @"notificationBar", @"updatedAt": @"updatedAt", @"variableName": @"variableName", @"variableCategoryName": @"variableCategoryName", @"unitAbbreviatedName": @"unitAbbreviatedName", @"combinationOperation": @"combinationOperation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clientId", @"userId", @"variableId", @"pendingReminderTime", @"defaultValue", @"reminderSound", @"popUp", @"sms", @"email", @"notificationBar", @"updatedAt", @"variableName", @"variableCategoryName", @"unitAbbreviatedName", @"combinationOperation"];
  return [optionalProperties containsObject:propertyName];
}

@end
