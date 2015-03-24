//
//  LoginModel.m
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/22/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import "LoginModel.h"
#import "Constants.h"
#import "AFNetworking.h"
#import "AFOAuth1Client.h"

@implementation LoginModel

-(void)login
{
    
    NSString *requestURL = [NSString stringWithFormat:@"%@/orders", kAPIURL];
    
    AFOAuth1Client *twitterClient = [[AFOAuth1Client alloc] initWithBaseURL:[NSURL URLWithString:requestURL]
                                                                        key:kConsumerKey
                                                                     secret:kConsumerSecret];
    
    NSURLRequest *request = [twitterClient requestWithMethod:@"GET" path:kAPIURL parameters:nil];
    
    AFHTTPRequestOperation *operation = [twitterClient HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSError *error;
        
        NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:&error];
        
        if (!error) {
            NSLog(@"RESPONSE: %@",JSON);
        }else{
            NSString *teste = responseObject;
            NSLog(@"Serialization Error: %@",teste);
        }
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"ERROR: %@",error);
        
    }];
    
    [twitterClient enqueueHTTPRequestOperation:operation];
    
}

@end
