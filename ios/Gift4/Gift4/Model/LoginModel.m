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
#import "BDBOAuth1RequestOperationManager.h"

@implementation LoginModel

-(void)login
{
    
    NSString *requestURL = [NSString stringWithFormat:@"%@", kAPIURL];
    
    BDBOAuth1RequestOperationManager *requestManager = [[BDBOAuth1RequestOperationManager alloc]initWithBaseURL:[NSURL URLWithString:requestURL]
                                                                                                    consumerKey:kConsumerKey
                                                                                                 consumerSecret:kConsumerSecret];
    
    
    [requestManager GET:@"/customers" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSError *error;
        NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:&error];
        
        if (!error) {
            NSLog(@"RESPONSE: %@",JSON);
        }else{
            NSLog(@"responseString = %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
         NSLog(@"ERROR: %@",error);
        
    }];
}

@end
