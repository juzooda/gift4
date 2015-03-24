//
//  ConnectionManager.m
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/22/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import "ConnectionManager.h"
#import <CommonCrypto/CommonHMAC.h>
#import "Constants.h"

#define NONCELENGHT 32

@implementation ConnectionManager

+(ConnectionManager *)sharedInstance
{
    static ConnectionManager *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(instance ==nil){
            instance = [[ConnectionManager alloc] init];
        }
    });
    
    return instance;
}
//
//+(NSDictionary *)oAuthParametersWithRequestMethod:(NSString *)requestMethod
//{
//#pragma mark OAuth Parameters
//    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
//    parameters[kOauthConsumerKey] = kConsumerKey;
//    
//    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
//    CFUUIDBytes uuidBytes = CFUUIDGetUUIDBytes(uuid);
//    CFRelease(uuid);
//    
//#if (defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000) || (defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED >= 1090)
//    parameters[kOauthNonce] = [[NSData dataWithBytes:&uuidBytes length:sizeof(uuidBytes)] base64EncodedStringWithOptions:0];
//#else
//    parameters[kOauthNonce] = [[NSData dataWithBytes:&uuidBytes length:sizeof(uuidBytes)] base64Encoding];
//#endif
//
//    parameters[kOauthTimestamp] = [@(floor([[NSDate date] timeIntervalSince1970])) stringValue];
//    parameters[kOauthSignatureMethod] = kSignatureMethod;
//
//    parameters[kOauthSignature] = [self OAuthSignatureForMethod:requestMethod URLString:kAPIURL parameters:parameters error:nil];
//    
//    return parameters;
//}
//
//+(NSString *)OAuthSignatureForMethod:(NSString *)method
//                            URLString:(NSString *)URLString
//                           parameters:(NSDictionary *)parameters
//                                error:(NSError *__autoreleasing *)error {
//   
//    AFHTTPRequestSerializer *rq = [[AFHTTPRequestSerializer alloc] init];
//    
//    
//    NSMutableURLRequest *request = [rq requestWithMethod:@"GET" URLString:URLString parameters:parameters error:error];
//    
//    [request setHTTPMethod:method];
//    
//    NSString *secretString = [[kConsumerKey bdb_URLEncode] stringByAppendingFormat:@"&%@", [kConsumerSecret bdb_URLEncode]];
//    NSData *secretData = [secretString dataUsingEncoding:NSUTF8StringEncoding];
//    
//    /**
//     * Create signature from request data
//     *
//     * 1. Convert the HTTP Method to uppercase and set the output string equal to this value.
//     * 2. Append the '&' character to the output string.
//     * 3. Percent encode the URL and append it to the output string.
//     * 4. Append the '&' character to the output string.
//     * 5. Percent encode the query string and append it to the output string.
//     */
//    NSString *requestMethod = [[request HTTPMethod] uppercaseString];
//    NSString *requestURL    = [[[[request URL] absoluteString] componentsSeparatedByString:@"?"][0] bdb_URLEncode];
//    NSArray *sortedQueryString = [[[[request URL] query] componentsSeparatedByString:@"&"] sortedArrayUsingSelector:@selector(compare:)];
//    NSString *queryString   = [[sortedQueryString componentsJoinedByString:@"&"] bdb_URLEncode];
//    NSString *requestString = [NSString stringWithFormat:@"%@&%@&%@", requestMethod, requestURL, queryString];
//    
//    NSData *requestData = [requestString dataUsingEncoding:NSUTF8StringEncoding];
//    
//    //POST&
//    //https%3A%2F%2Fapi.twitter.com%2F1%2Fstatuses%2Fupdate.json
//    //&include_entities%3Dtrue
//    //%26oauth_consumer_key%3Dxvz1evFS4wEEPTGEFPHBog
//    //%26oauth_nonce%3DkYjzVBB8Y0ZFabxSWbWovY3uYSQ2pTgmZeNu2VS4cg
//    //%26oauth_signature_method%3DHMAC-SHA1
//    //%26oauth_timestamp%3D1318622958
//
//    //GET&http%3A%2F%2Fdev.lampejos.com.br%2Fgift4%2Frafaelapp%2Fwc-api%2Fv2
//    //&oauth_consumer_key%3Dck_44c3b5bd74053b6c41677f58310be3f5
//    //%26oauth_nonce%3Dgw08%252FJ96Qjufxdfl4CY0lw%253D%253D
//    //%26oauth_signature_method%3DHMAC-SHA1
//    //%26oauth_timestamp%3D1427172069
//    
//    
//    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
//    CCHmacContext context;
//    CCHmacInit(&context, kCCHmacAlgSHA1, [secretData bytes], [secretData length]);
//    CCHmacUpdate(&context, [requestData bytes], [requestData length]);
//    CCHmacFinal(&context, digest);
//    
//#if (defined(__IPHONE_OS_VERSION_MIN_REQUIRED) && __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000) || (defined(__MAC_OS_X_VERSION_MIN_REQUIRED) && __MAC_OS_X_VERSION_MIN_REQUIRED >= 1090)
//    return [[NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH] base64EncodedStringWithOptions:0];
//#else
//    return [[NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH] base64Encoding];
//#endif
//}

@end
