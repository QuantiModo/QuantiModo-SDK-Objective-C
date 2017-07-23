#import "SWGConnection.h"

@implementation SWGConnection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"userId": @"userId", @"connectorId": @"connectorId", @"connectStatus": @"connectStatus", @"connectError": @"connectError", @"updateRequestedAt": @"updateRequestedAt", @"updateStatus": @"updateStatus", @"updateError": @"updateError", @"lastSuccessfulUpdatedAt": @"lastSuccessfulUpdatedAt", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"userId", @"connectStatus", @"connectError", @"updateRequestedAt", @"updateStatus", @"updateError", @"lastSuccessfulUpdatedAt", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
