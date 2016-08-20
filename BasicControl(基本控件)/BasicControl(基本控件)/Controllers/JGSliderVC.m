//
//  JGSliderVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGSliderVC.h"

@interface JGSliderVC ()

@end

@implementation JGSliderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn.hidden = YES;

    [self createSlider];
    
}


- (void)createSlider {
    
    //左右轨的图片
    UIImage *stetchLeftTrack = [UIImage imageNamed:@"tab_1"];
    UIImage *stetchRightTrack = [UIImage imageNamed:@"tabbar-user-selected"];
    //滑块图片
    UIImage *thumbImage = [UIImage imageNamed:@"tab_3"];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(30,320,257,7)];
    slider.backgroundColor = [UIColor clearColor];
    slider.value = 0.0;
    slider.minimumValue = 0.7;
    slider.maximumValue = 1.0;
    
    [slider setMinimumTrackImage:stetchLeftTrack forState:UIControlStateNormal];
    [slider setMaximumTrackImage:stetchRightTrack forState:UIControlStateNormal];
    //注意这里务必加上UIControlStateHightlighted的状态，否则当拖动滑块时滑块将变成原生的控件
    [slider setThumbImage:thumbImage forState:UIControlStateHighlighted];
    [slider setThumbImage:thumbImage forState:UIControlStateNormal];
    
    //滑块拖动时的事件
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    //滑块拖动后的事件
    [slider addTarget:self action:@selector(sliderDragUp:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:slider];
    
}

- (void)sliderValueChanged:(UISlider *)slider {
    
    NSLog(@"====  %f",slider.value);
    
}

- (void)sliderDragUp:(UISlider *)slider {
    
    NSLog(@"**** ====  %f",slider.value);
    
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
