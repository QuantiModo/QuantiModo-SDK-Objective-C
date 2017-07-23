#import "SWGTagsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGCommonResponse.h"
#import "SWGUserTag.h"


@interface SWGTagsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGTagsApi

NSString* kSWGTagsApiErrorDomain = @"SWGTagsApiErrorDomain";
NSInteger kSWGTagsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static SWGTagsApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Delete user tag or ingredient
/// Delete previously created user tags or ingredients.
///  @param taggedVariableId This is the id of the variable being tagged with an ingredient or something. 
///
///  @param tagVariableId This is the id of the ingredient variable whose value is determined based on the value of the tagged variable. 
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1UserTagsDeletePostWithTaggedVariableId: (NSNumber*) taggedVariableId
    tagVariableId: (NSNumber*) tagVariableId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'taggedVariableId' is set
    if (taggedVariableId == nil) {
        NSParameterAssert(taggedVariableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taggedVariableId"] };
            NSError* error = [NSError errorWithDomain:kSWGTagsApiErrorDomain code:kSWGTagsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'tagVariableId' is set
    if (tagVariableId == nil) {
        NSParameterAssert(tagVariableId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tagVariableId"] };
            NSError* error = [NSError errorWithDomain:kSWGTagsApiErrorDomain code:kSWGTagsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userTags/delete"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (taggedVariableId != nil) {
        queryParams[@"taggedVariableId"] = taggedVariableId;
    }
    if (tagVariableId != nil) {
        queryParams[@"tagVariableId"] = tagVariableId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                           }
          ];
}

///
/// Post or update user tags or ingredients
/// This endpoint allows users to tag foods with their ingredients.  This information will then be used to infer the user intake of the different ingredients by just entering the foods. The inferred intake levels will then be used to determine the effects of different nutrients on the user during analysis.
///  @param body Contains the new user tag data 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1UserTagsPostWithBody: (SWGUserTag*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGTagsApiErrorDomain code:kSWGTagsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/userTags"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token", @"quantimodo_oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGCommonResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCommonResponse*)data, error);
                                }
                           }
          ];
}



@end
