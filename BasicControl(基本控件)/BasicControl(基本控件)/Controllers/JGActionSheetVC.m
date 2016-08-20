//
//  JGActionSheetVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGActionSheetVC.h"

@interface JGActionSheetVC () <UIActionSheetDelegate>

@end

@implementation JGActionSheetVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)btnClicked {
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"标题" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@"其它", nil];

    [sheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSLog(@"%ld", buttonIndex);
    NSLog(@"%@", [actionSheet buttonTitleAtIndex:buttonIndex]);
    
    
}




@end
