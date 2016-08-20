//
//  JGProgressVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGProgressVC.h"

@interface JGProgressVC () {
    UIProgressView *_progress;
}

@end

@implementation JGProgressVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn.hidden = YES;
    
    [self createProgress];

    [self createTimer];
}

- (void)createProgress {
   
    _progress = [[UIProgressView alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    [self.view addSubview:_progress];
    
    _progress.tintColor = [UIColor redColor];
    _progress.progressTintColor = [UIColor greenColor];
    _progress.trackTintColor = [UIColor blueColor];
    _progress.progress = 0.01;
    
    
}

- (void)createTimer {
   
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(run) userInfo:nil repeats:YES];
    
}


- (void)run {
    
    _progress.progress += 0.01;
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
