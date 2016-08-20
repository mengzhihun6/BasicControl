//
//  JGAlertVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGAlertVC.h"

@interface JGAlertVC () <UIAlertViewDelegate>

@end

@implementation JGAlertVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnClicked {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"登录" message:@"请输入用户名和密码" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"按钮", nil];
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    UITextField *userNameField = [alertView textFieldAtIndex:0];
    UITextField *pwdField = [alertView textFieldAtIndex:1];
    
    NSLog(@"%@ --  %@", userNameField.text, pwdField.text);
    
    
}


@end
