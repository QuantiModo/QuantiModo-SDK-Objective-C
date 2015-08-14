#import "SWGUserApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGUser.h"
#import "SWGUserTokenRequest.h"
#import "SWGUserTokenFailedResponse.h"
#import "SWGUserTokenSuccessfulResponse.h"


@interface SWGUserApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGUserApi

static NSString * basePath = @"https://localhost/api";

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        self.apiClient = [SWGApiClient sharedClientFromPool:basePath];
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        if (apiClient) {
            self.apiClient = apiClient;
        }
        else {
            self.apiClient = [SWGApiClient sharedClientFromPool:basePath];
        }
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGUserApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGUserApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGUserApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
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
/// Get all available units for variableGet authenticated user
/// Returns user info for the currently authenticated user.
///  @returns SWGUser*
///
-(NSNumber*) userMeGetWithCompletionBlock: 
        (void (^)(SWGUser* output, NSError* error))completionBlock { 
        

    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/user/me", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    

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
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGUser*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGUser*)data, error);
              }
          ];
}

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
    

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/v1/organizations/{organizationId}/users", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"organizationId", @"}"]] withString: [SWGApiClient escape:organizationId]];
    

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

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SWGObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SWGObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: requestUrl
                                               method: @"POST"
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
