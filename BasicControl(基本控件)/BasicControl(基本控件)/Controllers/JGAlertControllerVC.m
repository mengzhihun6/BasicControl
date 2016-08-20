//
//  JGAlertControllerVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGAlertControllerVC.h"

@interface JGAlertControllerVC ()

@end

@implementation JGAlertControllerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnClicked5 {
   
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"删除" message:@"是否确定要删除的数据" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"具体的删除数据代码");
    }];
    
    [alertCtrl addAction:cancelAction];
    [alertCtrl addAction:deleteAction];
    
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
}

- (void)btnClicked {
    
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"警告" message:@"需要输入用户名和密码" preferredStyle:UIAlertControllerStyleAlert];
    //添加文本框
    [alertCtrl addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"用户名";
    }];
    
    [alertCtrl addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"密码";
        textField.secureTextEntry = YES;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pwdtextChanged) name:UITextFieldTextDidChangeNotification object:textField];
        
    }];
    
    //添加一个动作， 就是一个按钮
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"登录" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"用户名：%@， 密码：%@",alertCtrl.textFields[0].text, alertCtrl.textFields[1].text);
    }];
    
    action2.enabled = NO;
    [alertCtrl addAction:action2];
    
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
}

- (void)pwdtextChanged {
    
    //取得弹出的UIAlertController对象
    UIAlertController *alertCtrl = (UIAlertController *)  self.presentedViewController;
    if (alertCtrl) {
        UIAlertAction *loginAction = alertCtrl.actions.firstObject;
        loginAction.enabled = YES;
    }
}

- (void)btnClicked1 {
    
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"警告" message:@"电量低" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"知道了'" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"知道了");
    }];
    
    [alertCtrl addAction:action1];
    [alertCtrl addAction:action2];
    
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
}


@end
