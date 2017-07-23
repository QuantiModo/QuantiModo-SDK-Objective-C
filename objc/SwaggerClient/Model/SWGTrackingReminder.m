#import "SWGTrackingReminder.h"

@implementation SWGTrackingReminder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"clientId": @"clientId", @"userId": @"userId", @"variableId": @"variableId", @"defaultValue": @"defaultValue", @"reminderStartTime": @"reminderStartTime", @"reminderEndTime": @"reminderEndTime", @"reminderSound": @"reminderSound", @"reminderFrequency": @"reminderFrequency", @"popUp": @"popUp", @"sms": @"sms", @"email": @"email", @"notificationBar": @"notificationBar", @"latestTrackingReminderNotificationReminderTime": @"latestTrackingReminderNotificationReminderTime", @"lastTracked": @"lastTracked", @"startTrackingDate": @"startTrackingDate", @"stopTrackingDate": @"stopTrackingDate", @"updatedAt": @"updatedAt", @"variableName": @"variableName", @"variableCategoryName": @"variableCategoryName", @"unitAbbreviatedName": @"unitAbbreviatedName", @"combinationOperation": @"combinationOperation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"clientId", @"userId", @"reminderStartTime", @"reminderEndTime", @"reminderSound", @"popUp", @"sms", @"email", @"notificationBar", @"latestTrackingReminderNotificationReminderTime", @"lastTracked", @"startTrackingDate", @"stopTrackingDate", @"updatedAt", @"variableName", @"variableCategoryName", @"unitAbbreviatedName", @"combinationOperation"];
  return [optionalProperties containsObject:propertyName];
}

@end
