#import "SWGTrackingReminder.h"

@implementation SWGTrackingReminder

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"clientId": @"clientId", @"userId": @"userId", @"variableId": @"variableId", @"defaultValue": @"defaultValue", @"reminderStartTime": @"reminderStartTime", @"reminderEndTime": @"reminderEndTime", @"reminderSound": @"reminderSound", @"reminderFrequency": @"reminderFrequency", @"popUp": @"popUp", @"sms": @"sms", @"email": @"email", @"notificationBar": @"notificationBar", @"lastReminded": @"lastReminded", @"lastTracked": @"lastTracked", @"firstDailyReminderTime": @"firstDailyReminderTime", @"secondDailyReminderTime": @"secondDailyReminderTime", @"thirdDailyReminderTime": @"thirdDailyReminderTime", @"startTrackingDate": @"startTrackingDate", @"stopTrackingDate": @"stopTrackingDate", @"updatedAt": @"updatedAt", @"variableName": @"variableName", @"variableCategoryName": @"variableCategoryName", @"abbreviatedUnitName": @"abbreviatedUnitName", @"combinationOperation": @"combinationOperation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"clientId", @"userId", @"defaultValue", @"reminderStartTime", @"reminderEndTime", @"reminderSound", @"reminderFrequency", @"popUp", @"sms", @"email", @"notificationBar", @"lastReminded", @"lastTracked", @"firstDailyReminderTime", @"secondDailyReminderTime", @"thirdDailyReminderTime", @"startTrackingDate", @"stopTrackingDate", @"updatedAt", @"variableName", @"variableCategoryName", @"abbreviatedUnitName", @"combinationOperation"];

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
