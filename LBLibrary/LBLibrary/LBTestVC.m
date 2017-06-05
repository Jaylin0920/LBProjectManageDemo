//
//  LBTestVC.m
//  LBLibrary
//
//  Created by JiBaoBao on 17/6/5.
//  Copyright © 2017年 JiBaoBao. All rights reserved.
//

#import "LBTestVC.h"

@interface LBTestVC ()

@end

@implementation LBTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //从bundle中加载
    UIImageView *imgView1 = [[UIImageView alloc]initWithImage:[self imageFromXCSDKBundleNamed:@"success"]];
    imgView1.frame = CGRectMake(10, 100, 50, 50);
    [self.view addSubview:imgView1];
    
    //从img.xcassets中加载（无法直接读取，需要通过bundle路径读取）
//    UIImageView *imgView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"failed"]]; //无法读取
    NSBundle *bund = [NSBundle bundleWithPath: [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: @"LBRes.bundle"]];
    UIImageView *imgView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"failed" inBundle:bund compatibleWithTraitCollection:nil]];
    imgView2.frame = CGRectMake(10, 200, 50, 50);
    [self.view addSubview:imgView2];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIImage *)imageFromXCSDKBundleNamed:(NSString *)name {
    NSString * mainBundlePath = [[NSBundle mainBundle] resourcePath];
    NSString *imageName = [NSString stringWithFormat:@"%@%@",name,@".png"];
    if ([name hasSuffix:@".jpg"]) {
        imageName = name;
    }
    else if ([name hasSuffix:@".png"]) {
        imageName = name;
    }
    NSString *imageFilePath = [mainBundlePath stringByAppendingString:[NSString stringWithFormat:@"/LBRes.bundle/LBResource.bundle/%@",imageName]];
    UIImage *img = [UIImage imageWithContentsOfFile:imageFilePath];
    return img;
}

@end
