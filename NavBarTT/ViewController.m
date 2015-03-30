//
//  ViewController.m
//  NavBarTT
//
//  Created by shejun.zhou on 15/3/30.
//  Copyright (c) 2015年 YiBan.iOS. All rights reserved.
//

#import "ViewController.h"
#import "TTViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    UIImageView *imgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_title_bar_bg_green"]];
    imgV.frame = CGRectMake(0, -10, 100, 100);
    [self.view addSubview:imgV];
    
    self.title = @"one";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 200, 100, 44);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    btn.titleLabel.tintColor = [UIColor grayColor];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnAction:(id)sender {
    TTViewController *vc = [[TTViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
