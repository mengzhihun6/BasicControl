//
//  JGTextViewVC.m
//  BasicControl(基本控件)
//
//  Created by 郭军 on 16/8/20.
//  Copyright © 2016年 JUN. All rights reserved.
//

#import "JGTextViewVC.h"

@interface JGTextViewVC () <UITextViewDelegate>

@end

@implementation JGTextViewVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.btn.hidden = YES;
    [self createTextView];

}

- (void)createTextView {
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    textView.delegate = self;
    [self.view addSubview:textView];
}

/*
 UITextViewDelegate方法
 - (BOOL)textViewShouldBeginEditing:(UITextView *)textView;
 - (BOOL)textViewShouldEndEditing:(UITextView *)textView;
 
 - (void)textViewDidBeginEditing:(UITextView *)textView;
 - (void)textViewDidEndEditing:(UITextView *)textView;
 
 - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
 - (void)textViewDidChange:(UITextView *)textView;
 
 - (void)textViewDidChangeSelection:(UITextView *)textView;
 
 - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange;
 - (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange;
 */

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
