//
//  ViewController.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float red = arc4random() % 255 / 255.0;
    float green = arc4random() % 255 / 255.0;
    float blue = arc4random() % 255 / 255.0;

    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    //设置标题为当前控制器的名称
    self.title = NSStringFromClass(self.class);
    
    //添加一个按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 200, 40)];
    [btn setTitle:@"点我试试" forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"logoff_btn_n"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    self.btn = btn;

}

- (void)btnClicked {
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
