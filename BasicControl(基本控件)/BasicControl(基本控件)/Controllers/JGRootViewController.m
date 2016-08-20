//
//  JGRootViewController.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGRootViewController.h"

#define kDeviceWidth [UIScreen mainScreen].bounds.size.width

@interface JGRootViewController ()

@end

@implementation JGRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn.hidden = YES;
    
    //设置返回按钮
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //添加按钮
    [self createButtons];



}

- (void)createButtons {
    
    //创建一个数组，该数组中保存着按钮的名称，也是下一级视图控制器的名称
    NSArray *btnNames = @[@"JGActionSheetVC", @"JGActivityIndicatorVC", @"JGAlertVC", @"JGProgressVC", @"JGSegmentVC", @"JGSliderVC", @"JGStepperVC", @"JGSwitchVC", @"JGTextViewVC", @"JGAlertControllerVC"];
    //通过循环依次创建10个按钮
    for (int i = 0; i < btnNames.count; i++) {
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100 + i * 60, kDeviceWidth - 100, 40)];
        [btn setTitle:btnNames[i] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"login_btn_n"] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)btnClick:(UIButton *)button {
    
    //通过点击按钮的标题 获取下一级视图控制器的类名
    Class VCClass = NSClassFromString( [button currentTitle] );
    
    //通过类名创建下一级控制器对象
    ViewController *vc = [[VCClass alloc] init];

    [self.navigationController pushViewController:vc animated:YES];
    
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
