#import "SWGCorrelationsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGCommonResponse.h"
#import "SWGCorrelation.h"
#import "SWGJsonErrorResponse.h"
#import "SWGPostCorrelation.h"
#import "SWGPostVote.h"
#import "SWGVoteDelete.h"


@interface SWGCorrelationsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGCorrelationsApi

NSString* kSWGCorrelationsApiErrorDomain = @"SWGCorrelationsApiErrorDomain";
NSInteger kSWGCorrelationsApiMissingParamErrorCode = 234513;

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
    static SWGCorrelationsApi *sharedAPI;
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
/// Get aggregated correlations
/// Get correlations based on the anonymized aggregate data from all QuantiModo users.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param effect Variable name of the effect variable for which the user desires correlations (optional)
///
///  @param cause Variable name of the cause variable for which the user desires correlations (optional)
///
///  @param correlationCoefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action (optional)
///
///  @param onsetDelay The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
///
///  @param durationOfAction The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
///
///  @param updatedAt The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\".  Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append `?updatedAt=(ge)2013-01-D01T01:01:01 to your request. (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @param outcomesOfInterest Only include correlations for which the effect is an outcome of interest for the user (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1AggregatedCorrelationsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    effect: (NSString*) effect
    cause: (NSString*) cause
    correlationCoefficient: (NSString*) correlationCoefficient
    onsetDelay: (NSString*) onsetDelay
    durationOfAction: (NSString*) durationOfAction
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/aggregatedCorrelations"];

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
    if (effect != nil) {
        queryParams[@"effect"] = effect;
    }
    if (cause != nil) {
        queryParams[@"cause"] = cause;
    }
    if (correlationCoefficient != nil) {
        queryParams[@"correlationCoefficient"] = correlationCoefficient;
    }
    if (onsetDelay != nil) {
        queryParams[@"onsetDelay"] = onsetDelay;
    }
    if (durationOfAction != nil) {
        queryParams[@"durationOfAction"] = durationOfAction;
    }
    if (updatedAt != nil) {
        queryParams[@"updatedAt"] = updatedAt;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (outcomesOfInterest != nil) {
        queryParams[@"outcomesOfInterest"] = outcomesOfInterest;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Store or Update a Correlation
/// Add correlation
///  @param body Provides correlation data 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns void
///
-(NSNumber*) v1AggregatedCorrelationsPostWithBody: (SWGPostCorrelation*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/aggregatedCorrelations"];

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Get correlations
/// Get correlations based on data from a single user.
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param effect Variable name of the effect variable for which the user desires correlations (optional)
///
///  @param cause Variable name of the cause variable for which the user desires correlations (optional)
///
///  @param correlationCoefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action (optional)
///
///  @param onsetDelay The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. (optional)
///
///  @param durationOfAction The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. (optional)
///
///  @param updatedAt The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\".  Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append `?updatedAt=(ge)2013-01-D01T01:01:01 to your request. (optional)
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
///
///  @param offset Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`. (optional)
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
///
///  @param outcomesOfInterest Only include correlations for which the effect is an outcome of interest for the user (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1CorrelationsGetWithAccessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    effect: (NSString*) effect
    cause: (NSString*) cause
    correlationCoefficient: (NSString*) correlationCoefficient
    onsetDelay: (NSString*) onsetDelay
    durationOfAction: (NSString*) durationOfAction
    updatedAt: (NSString*) updatedAt
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sort: (NSNumber*) sort
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/correlations"];

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
    if (effect != nil) {
        queryParams[@"effect"] = effect;
    }
    if (cause != nil) {
        queryParams[@"cause"] = cause;
    }
    if (correlationCoefficient != nil) {
        queryParams[@"correlationCoefficient"] = correlationCoefficient;
    }
    if (onsetDelay != nil) {
        queryParams[@"onsetDelay"] = onsetDelay;
    }
    if (durationOfAction != nil) {
        queryParams[@"durationOfAction"] = durationOfAction;
    }
    if (updatedAt != nil) {
        queryParams[@"updatedAt"] = updatedAt;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (outcomesOfInterest != nil) {
        queryParams[@"outcomesOfInterest"] = outcomesOfInterest;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
///  @param organizationId Organization ID 
///
///  @param userId2 User id 
///
///  @param variableName Effect variable name 
///
///  @param organizationToken Organization access token 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param includePublic Include public correlations, Can be \"1\" or empty. (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithOrganizationId: (NSNumber*) organizationId
    userId2: (NSNumber*) userId2
    variableName: (NSString*) variableName
    organizationToken: (NSString*) organizationToken
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    includePublic: (NSString*) includePublic
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'organizationId' is set
    if (organizationId == nil) {
        NSParameterAssert(organizationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organizationId"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId2' is set
    if (userId2 == nil) {
        NSParameterAssert(userId2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId2"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'organizationToken' is set
    if (organizationToken == nil) {
        NSParameterAssert(organizationToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organizationToken"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organizationId != nil) {
        pathParams[@"organizationId"] = organizationId;
    }
    if (userId2 != nil) {
        pathParams[@"userId"] = userId2;
    }
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (organizationToken != nil) {
        queryParams[@"organization_token"] = organizationToken;
    }
    if (includePublic != nil) {
        queryParams[@"includePublic"] = includePublic;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
///  @param organizationId Organization ID 
///
///  @param userId2 User id 
///
///  @param variableName Cause variable name 
///
///  @param organizationToken Organization access token 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param includePublic Include public correlations, Can be \"1\" or empty. (optional)
///
///  @returns NSArray<SWGCommonResponse>*
///
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithOrganizationId: (NSNumber*) organizationId
    userId2: (NSNumber*) userId2
    variableName: (NSString*) variableName
    organizationToken: (NSString*) organizationToken
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    includePublic: (NSString*) includePublic
    completionHandler: (void (^)(NSArray<SWGCommonResponse>* output, NSError* error)) handler {
    // verify the required parameter 'organizationId' is set
    if (organizationId == nil) {
        NSParameterAssert(organizationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organizationId"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId2' is set
    if (userId2 == nil) {
        NSParameterAssert(userId2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId2"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'organizationToken' is set
    if (organizationToken == nil) {
        NSParameterAssert(organizationToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"organizationToken"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organizationId != nil) {
        pathParams[@"organizationId"] = organizationId;
    }
    if (userId2 != nil) {
        pathParams[@"userId"] = userId2;
    }
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (organizationToken != nil) {
        queryParams[@"organization_token"] = organizationToken;
    }
    if (includePublic != nil) {
        queryParams[@"include_public"] = includePublic;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCommonResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCommonResponse>*)data, error);
                                }
                           }
          ];
}

///
/// Get average correlations for variables containing search term
/// Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
///  @param search Name of the variable that you want to know the causes or effects of. 
///
///  @param effectOrCause Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned. cause indicates that the searched variable is the cause and the effects should be returned. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param outcomesOfInterest Only include correlations for which the effect is an outcome of interest for the user (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1PublicCorrelationsSearchSearchGetWithSearch: (NSString*) search
    effectOrCause: (NSString*) effectOrCause
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    outcomesOfInterest: (NSNumber*) outcomesOfInterest
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'search' is set
    if (search == nil) {
        NSParameterAssert(search);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"search"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'effectOrCause' is set
    if (effectOrCause == nil) {
        NSParameterAssert(effectOrCause);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"effectOrCause"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/public/correlations/search/{search}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (effectOrCause != nil) {
        queryParams[@"effectOrCause"] = effectOrCause;
    }
    if (outcomesOfInterest != nil) {
        queryParams[@"outcomesOfInterest"] = outcomesOfInterest;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search user correlations for a given effect
/// Returns average of all correlations and votes for all user cause variables for a given effect
///  @param variableName Effect variable name 
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNameCausesGetWithVariableName: (NSString*) variableName
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/causes"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user effect variables for a given cause
///  @param variableName Cause variable name 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param correlationCoefficient You can use this to get effects with correlations greater than or less than 0 (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNameEffectsGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    correlationCoefficient: (NSString*) correlationCoefficient
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/effects"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (correlationCoefficient != nil) {
        queryParams[@"correlationCoefficient"] = correlationCoefficient;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search public correlations for a given effect
/// Returns average of all correlations and votes for all public cause variables for a given effect
///  @param variableName Effect variable name 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @param correlationCoefficient You can use this to get causes with correlations greater than or less than 0 (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNamePublicCausesGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    correlationCoefficient: (NSString*) correlationCoefficient
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/public/causes"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (accessToken != nil) {
        queryParams[@"access_token"] = accessToken;
    }
    if (userId != nil) {
        queryParams[@"userId"] = userId;
    }
    if (correlationCoefficient != nil) {
        queryParams[@"correlationCoefficient"] = correlationCoefficient;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Search public correlations for a given cause
/// Returns average of all correlations and votes for all public cause variables for a given cause
///  @param variableName Cause variable name 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNamePublicEffectsGetWithVariableName: (NSString*) variableName
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error)) handler {
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        NSParameterAssert(variableName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"variableName"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/public/effects"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }

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

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<SWGCorrelation>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCorrelation>*)data, error);
                                }
                           }
          ];
}

///
/// Delete vote
/// Delete previously posted vote
///  @param body The cause and effect variable names for the predictor vote to be deleted. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesDeletePostWithBody: (SWGVoteDelete*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/votes/delete"];

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

///
/// Post or update vote
/// This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
///  @param body Contains the cause variable, effect variable, and vote value. 
///
///  @param accessToken User's OAuth2 access token (optional)
///
///  @param userId User's id (optional)
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesPostWithBody: (SWGPostVote*) body
    accessToken: (NSString*) accessToken
    userId: (NSNumber*) userId
    completionHandler: (void (^)(SWGCommonResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGCorrelationsApiErrorDomain code:kSWGCorrelationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/votes"];

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
