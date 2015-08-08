//
//  ViewController.m
//  AutoLayout
//
//  Created by Jane on 8/8/15.
//  Copyright (c) 2015 Jane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"测试按钮" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor brownColor]];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    //[self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-80]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop   relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:80]];
    //左边水平距离
    //    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:80]];
    //    //右边距离
    //    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:-80]];
    //水平居中
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    //设置宽度
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:299]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:299]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
