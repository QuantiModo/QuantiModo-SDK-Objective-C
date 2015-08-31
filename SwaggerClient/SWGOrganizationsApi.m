#import "SWGOrganizationsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGUserTokenRequest.h"
#import "SWGUserTokenFailedResponse.h"
#import "SWGUserTokenSuccessfulResponse.h"


@interface SWGOrganizationsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGOrganizationsApi

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

+(SWGOrganizationsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGOrganizationsApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOrganizationsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
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
/// Get user tokens for existing users, create new users
/// Get user tokens for existing users, create new users
///  @param organizationId Organization ID
///
///  @param body Provides organization token and user ID
///
///  @returns SWGUserTokenSuccessfulResponse*
///
-(NSNumber*) v1OrganizationsOrganizationIdUsersPostWithCompletionBlock: (NSNumber*) organizationId
         body: (SWGUserTokenRequest*) body
        
        completionHandler: (void (^)(SWGUserTokenSuccessfulResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'organizationId' is set
    if (organizationId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `organizationId` when calling `v1OrganizationsOrganizationIdUsersPost`"];
    }
    
    // verify the required parameter 'body' is set
    if (body == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `body` when calling `v1OrganizationsOrganizationIdUsersPost`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/organizations/{organizationId}/users"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (organizationId != nil) {
        pathParams[@"organizationId"] = organizationId;
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
    NSArray *authSettings = @[];

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
                                         responseType: @"SWGUserTokenSuccessfulResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGUserTokenSuccessfulResponse*)data, error);
              }
          ];
}



@end
