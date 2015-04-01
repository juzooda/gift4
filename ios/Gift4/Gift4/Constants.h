//
//  Constants.h
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/22/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constants : NSObject

FOUNDATION_EXPORT NSString *const kConsumerKey;
FOUNDATION_EXPORT NSString *const kConsumerSecret;
FOUNDATION_EXPORT NSString *const kAPIURL;
FOUNDATION_EXPORT NSString *const kSignatureMethod;

//Authentication Parameters

FOUNDATION_EXPORT NSString *const kOauthConsumerKey;
FOUNDATION_EXPORT NSString *const kOauthTimestamp;
FOUNDATION_EXPORT NSString *const kOauthNonce;
FOUNDATION_EXPORT NSString *const kOauthSignature;
FOUNDATION_EXPORT NSString *const kOauthSignatureMethod;

//Where to Buy

FOUNDATION_EXPORT double const kLatitude;
FOUNDATION_EXPORT double const kLongitude;

@end


