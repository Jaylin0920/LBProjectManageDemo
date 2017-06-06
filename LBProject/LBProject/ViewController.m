//
//  ViewController.m
//  LBProject
//
//  Created by JiBaoBao on 17/6/5.
//  Copyright © 2017年 JiBaoBao. All rights reserved.
//

#import "ViewController.h"
#import <LBLibrary.h>
#import <LBTestVC.h>


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LBTestVC *testVC = [[LBTestVC alloc]init];
    [self presentViewController:testVC animated:YES completion:nil];
}

- (IBAction)btnClick:(UIButton *)sender {
    [LBLibrary lbLog];
}


@end
