//
//  LoginViewController.m
//  Gift4
//
//  Created by Rafael Juzo G Oda on 3/22/15.
//  Copyright (c) 2015 Rafael Juzo Gomes Oda. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModel.h"


@implementation LoginViewController

-(void)viewDidLoad
{
//    [self.doneButton setEnabled:YES]
}


- (IBAction)login:(id)sender {
    
    LoginModel *loginModel = [[LoginModel alloc] init];
    [loginModel login];
    
}


@end
