//
//  JGStepperVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGStepperVC.h"

@interface JGStepperVC ()

@end

@implementation JGStepperVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.btn.hidden = YES;
    
    [self createStepper];

}

- (void)createStepper {
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(50, 100, 300, 100)];
    [self.view addSubview:stepper];
    
    stepper.tintColor = [UIColor redColor];
    stepper.backgroundColor = [UIColor greenColor];
    
    stepper.minimumValue = 0;
    stepper.maximumValue = 100;
    stepper.stepValue = 5;
    stepper.wraps = YES;
    stepper.autorepeat = YES;
    
    [stepper addTarget:self action:@selector(stepperValueChange:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    
}

- (void)stepperValueChange:(UIStepper *)stepper {
    NSLog(@"%f",stepper.value);
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
