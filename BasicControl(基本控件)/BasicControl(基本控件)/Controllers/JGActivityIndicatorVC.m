//
//  JGActivityIndicatorVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGActivityIndicatorVC.h"

@interface JGActivityIndicatorVC () {
    UIActivityIndicatorView *_activity;
}

@end

@implementation JGActivityIndicatorVC

- (void)viewDidLoad {
    [super viewDidLoad];

    [self createActivityIndicator];

}

- (void)createActivityIndicator {
    
    _activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    _activity.backgroundColor = [UIColor clearColor];
    _activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    [self.view addSubview:_activity];
    
    //让状态栏中的ativityIndicator显示出来
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    //开始动画
    [_activity startAnimating];
}

- (void)btnClicked {
    
    [_activity stopAnimating];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    
    
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
