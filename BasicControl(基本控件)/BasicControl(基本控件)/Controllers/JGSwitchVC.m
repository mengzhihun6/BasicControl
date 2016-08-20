//
//  JGSwitchVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGSwitchVC.h"

@interface JGSwitchVC ()

@end

@implementation JGSwitchVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.btn.hidden = YES;
    
    [self createSwitch];

}

- (void)createSwitch {
    
    UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
    mySwitch.onTintColor = [UIColor redColor];
    mySwitch.tintColor = [UIColor greenColor];
    [self.view addSubview:mySwitch];
    
    [mySwitch addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];
    
    
}


- (void)switchValueChange:(UISwitch *)mySwitch {
    
    if (mySwitch.isOn) {
        NSLog(@"on");
    }else {
        NSLog(@"off");
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
