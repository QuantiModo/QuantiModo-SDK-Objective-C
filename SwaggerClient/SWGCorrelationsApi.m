#import "SWGCorrelationsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGCorrelation.h"
#import "SWGJsonErrorResponse.h"
#import "SWGPostCorrelation.h"
#import "SWGCommonResponse.h"


@interface SWGCorrelationsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGCorrelationsApi

static SWGCorrelationsApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGCorrelationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGCorrelationsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGCorrelationsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGCorrelationsApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Get correlations
/// Get correlations.<br>Supported filter parameters:<br><ul><li><b>correlationCoefficient</b> - Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action</li><li><b>onsetDelay</b> - The number of seconds which pass following a cause measurement before an effect would likely be observed.</li><li><b>durationOfAction</b> - The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.</li><li><b>lastUpdated</b> - The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
///  @param effect ORIGINAL variable name of the effect variable for which the user desires correlations
///
///  @param cause ORIGINAL variable name of the cause variable for which the user desires correlations
///
///  @param correlationCoefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
///
///  @param onsetDelay The number of seconds which pass following a cause measurement before an effect would likely be observed.
///
///  @param durationOfAction The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
///
///  @param lastUpdated The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
///
///  @param limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
///
///  @param offset Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
///
///  @param sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1CorrelationsGetWithCompletionBlock: (NSString*) effect
         cause: (NSString*) cause
         correlationCoefficient: (NSString*) correlationCoefficient
         onsetDelay: (NSString*) onsetDelay
         durationOfAction: (NSString*) durationOfAction
         lastUpdated: (NSString*) lastUpdated
         limit: (NSNumber*) limit
         offset: (NSNumber*) offset
         sort: (NSNumber*) sort
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/correlations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(correlationCoefficient != nil) {
        
        queryParams[@"correlationCoefficient"] = correlationCoefficient;
    }
    if(onsetDelay != nil) {
        
        queryParams[@"onsetDelay"] = onsetDelay;
    }
    if(durationOfAction != nil) {
        
        queryParams[@"durationOfAction"] = durationOfAction;
    }
    if(lastUpdated != nil) {
        
        queryParams[@"lastUpdated"] = lastUpdated;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(sort != nil) {
        
        queryParams[@"sort"] = sort;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Store or Update a Correlation
/// Add correlation
///  @param body Provides correlation data
///
///  @returns void
///
-(NSNumber*) v1CorrelationsPostWithCompletionBlock: (SWGPostCorrelation*) body
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'body' is set
    if (body == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `body` when calling `v1CorrelationsPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/correlations"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = body;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
///  @param organizationId Organization ID
///
///  @param userId User id
///
///  @param variableName Effect variable name
///
///  @param organizationToken Organization access token
///
///  @param includePublic Include bublic correlations, Can be \"1\" or empty.
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGetWithCompletionBlock: (NSNumber*) organizationId
         userId: (NSNumber*) userId
         variableName: (NSString*) variableName
         organizationToken: (NSString*) organizationToken
         includePublic: (NSString*) includePublic
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'organizationId' is set
    if (organizationId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `organizationId` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet`"];
    }
    
    // verify the required parameter 'userId' is set
    if (userId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `userId` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet`"];
    }
    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet`"];
    }
    
    // verify the required parameter 'organizationToken' is set
    if (organizationToken == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `organizationToken` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameCausesGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organizationId != nil) {
        pathParams[@"organizationId"] = organizationId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(organizationToken != nil) {
        
        queryParams[@"organization_token"] = organizationToken;
    }
    if(includePublic != nil) {
        
        queryParams[@"include_public"] = includePublic;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
///  @param organizationId Organization ID
///
///  @param userId User id
///
///  @param variableName Cause variable name
///
///  @param organizationToken Organization access token
///
///  @param includePublic Include bublic correlations, Can be \"1\" or empty.
///
///  @returns NSArray<SWGCommonResponse>*
///
-(NSNumber*) v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGetWithCompletionBlock: (NSNumber*) organizationId
         userId: (NSNumber*) userId
         variableName: (NSString*) variableName
         organizationToken: (NSString*) organizationToken
         includePublic: (NSString*) includePublic
        
        completionHandler: (void (^)(NSArray<SWGCommonResponse>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'organizationId' is set
    if (organizationId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `organizationId` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet`"];
    }
    
    // verify the required parameter 'userId' is set
    if (userId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `userId` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet`"];
    }
    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet`"];
    }
    
    // verify the required parameter 'organizationToken' is set
    if (organizationToken == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `organizationToken` when calling `v1OrganizationsOrganizationIdUsersUserIdVariablesVariableNameEffectsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organizationId != nil) {
        pathParams[@"organizationId"] = organizationId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(organizationToken != nil) {
        
        queryParams[@"organization_token"] = organizationToken;
    }
    if(includePublic != nil) {
        
        queryParams[@"include_public"] = includePublic;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCommonResponse>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCommonResponse>*)data, error);
              }
          ];
}

///
/// Get average correlations for variables containing search term
/// Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
///  @param search Name of the variable that you want to know the causes or effects of.
///
///  @param effectOrCause Specifies whether to return the effects or causes of the searched variable.
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1PublicCorrelationsSearchSearchGetWithCompletionBlock: (NSString*) search
         effectOrCause: (NSString*) effectOrCause
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'search' is set
    if (search == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `search` when calling `v1PublicCorrelationsSearchSearchGet`"];
    }
    
    // verify the required parameter 'effectOrCause' is set
    if (effectOrCause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effectOrCause` when calling `v1PublicCorrelationsSearchSearchGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/public/correlations/search/{search}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (search != nil) {
        pathParams[@"search"] = search;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(effectOrCause != nil) {
        
        queryParams[@"effectOrCause"] = effectOrCause;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
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
-(NSNumber*) v1VariablesVariableNameCausesGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1VariablesVariableNameCausesGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/causes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Search user correlations for a given cause
/// Returns average of all correlations and votes for all user effect variables for a given cause
///  @param variableName Cause variable name
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNameEffectsGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1VariablesVariableNameEffectsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/effects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Search public correlations for a given effect
/// Returns average of all correlations and votes for all public cause variables for a given effect
///  @param variableName Effect variable name
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNamePublicCausesGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1VariablesVariableNamePublicCausesGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/public/causes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Search public correlations for a given cause
/// Returns average of all correlations and votes for all public cause variables for a given cause
///  @param variableName Cause variable name
///
///  @returns NSArray<SWGCorrelation>*
///
-(NSNumber*) v1VariablesVariableNamePublicEffectsGetWithCompletionBlock: (NSString*) variableName
        
        completionHandler: (void (^)(NSArray<SWGCorrelation>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'variableName' is set
    if (variableName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `variableName` when calling `v1VariablesVariableNamePublicEffectsGet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/variables/{variableName}/public/effects"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (variableName != nil) {
        pathParams[@"variableName"] = variableName;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGCorrelation>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGCorrelation>*)data, error);
              }
          ];
}

///
/// Post or update vote
/// This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
///  @param cause Cause variable name
///
///  @param effect Effect variable name
///
///  @param correlation Correlation value
///
///  @param vote Vote: 0 (for implausible) or 1 (for plausible)
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesPostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
         correlation: (NSNumber*) correlation
         vote: (NSNumber*) vote
        
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1VotesPost`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1VotesPost`"];
    }
    
    // verify the required parameter 'correlation' is set
    if (correlation == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `correlation` when calling `v1VotesPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/votes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    if(correlation != nil) {
        
        queryParams[@"correlation"] = correlation;
    }
    if(vote != nil) {
        
        queryParams[@"vote"] = vote;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGCommonResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGCommonResponse*)data, error);
              }
          ];
}

///
/// Delete vote
/// Delete previously posted vote
///  @param cause Cause variable name
///
///  @param effect Effect variable name
///
///  @returns SWGCommonResponse*
///
-(NSNumber*) v1VotesDeletePostWithCompletionBlock: (NSString*) cause
         effect: (NSString*) effect
        
        completionHandler: (void (^)(SWGCommonResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'cause' is set
    if (cause == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cause` when calling `v1VotesDeletePost`"];
    }
    
    // verify the required parameter 'effect' is set
    if (effect == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `effect` when calling `v1VotesDeletePost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/votes/delete"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cause != nil) {
        
        queryParams[@"cause"] = cause;
    }
    if(effect != nil) {
        
        queryParams[@"effect"] = effect;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGCommonResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGCommonResponse*)data, error);
              }
          ];
}



@end
