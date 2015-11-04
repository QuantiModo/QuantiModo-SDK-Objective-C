#import "SWGConnection.h"

@implementation SWGConnection

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"user_id": @"userId", @"connector_id": @"connectorId", @"connect_status": @"connectStatus", @"connect_error": @"connectError", @"update_requested_at": @"updateRequestedAt", @"update_status": @"updateStatus", @"update_error": @"updateError", @"last_successful_updated_at": @"lastSuccessfulUpdatedAt", @"created_at": @"createdAt", @"updated_at": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"userId", @"connectStatus", @"connectError", @"updateRequestedAt", @"updateStatus", @"updateError", @"lastSuccessfulUpdatedAt", @"createdAt", @"updatedAt"];

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
