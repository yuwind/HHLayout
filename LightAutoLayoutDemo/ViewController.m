//
//  ViewController.m
//  LightAutoLayoutDemo
//
//  Created by 豫风 on 2017/12/7.
//  Copyright © 2017年 豫风. All rights reserved.
//

#import "ViewController.h"
#import "UIView+HHConstraint.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    UILabel *label1 = [UILabel new];
    self.label1 = label1;
    label1.text = @"label1";
    label1.backgroundColor = [UIColor lightGrayColor];
    label1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label1];
    
    label1.topLeft_(CGRectMake(100, 200, 70, 30));
    
    
    UILabel *label2 = [UILabel new];
    [self.view addSubview:label2];
    label2.text = @"label2";
    label2.backgroundColor = [UIColor lightGrayColor];
    label2.textAlignment = NSTextAlignmentCenter;
    
    //label2的左边等于label1的右边同时偏移10point，宽、高、centerY等于label1
    label2.top_.centX.widt_.heit_.equalTo(label1.bott_).offset(20).on_();
    
    
    UILabel *label3 = [UILabel new];
    [self.view addSubview:label3];
    label3.text = @"label3";
    label3.backgroundColor = [UIColor greenColor];
    label3.textAlignment = NSTextAlignmentCenter;
    
    label3.bottomLeft_(CGRectMake(100, 150, 80, 30));
    
    
    UILabel *label4 = [UILabel new];
    [self.view addSubview:label4];
    label4.text = @"label4";
    label4.backgroundColor = [UIColor greenColor];
    label4.textAlignment = NSTextAlignmentCenter;
    
//label4的左边等于label3的右边同时偏移10point，宽和高等于100，centerY等于label3
    label4.left_.widt_.heit_.centY.equalTo(label3.righ_).offset(10).constList(@(100),@(100),nil).on_();
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.label1.hh_leftCS.constant = 200;

    [UIView animateWithDuration:1 animations:^{
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        self.label1.hh_leftCS.constant = 100;
        [UIView animateWithDuration:1 animations:^{
            [self.view layoutIfNeeded];
        }];
    }];
}


@end
