//
//  JGSegmentVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGSegmentVC.h"

@interface JGSegmentVC ()

@end

@implementation JGSegmentVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.btn.hidden = YES;
    [self createSegment];

}

- (void)createSegment {
    
    NSArray *items = @[@"11", @"22", @"33"];
    
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.frame = CGRectMake(50, 100, 300, 40);
    segment.backgroundColor = [UIColor magentaColor];
    segment.tintColor = [UIColor yellowColor];
    segment.selectedSegmentIndex = 0;
    [self.view addSubview:segment];
    
    [segment insertSegmentWithTitle:@"44" atIndex:1 animated:YES];
    [segment insertSegmentWithImage:[UIImage imageNamed:@"tab_0"] atIndex:1 animated:YES];
    
    //让图片显示原始照片
    UIImage *img = [[UIImage imageNamed:@"tab_0"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [segment insertSegmentWithImage:img atIndex:1 animated:YES];
    
    
    
    
    [segment addTarget:self action:@selector(segmengSelected:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)segmengSelected:(UISegmentedControl *)segment {
    
    NSLog(@"%ld", segment.selectedSegmentIndex);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
