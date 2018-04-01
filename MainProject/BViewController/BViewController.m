//
//  BViewController.m
//  MainProject
//
//  Created by Zhaoyun Wang on 2018/3/29.
//  Copyright © 2018年 Zhaoyun Wang. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initUI{
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGSize screen = [UIScreen mainScreen].bounds.size;
    UIButton *jumpBt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    jumpBt.center = CGPointMake(screen.width/2, screen.height/2);
    [jumpBt setTitle:@"JumpBack" forState:UIControlStateNormal];
    [jumpBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [jumpBt addTarget:self action:@selector(jumpBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBt];
}

-(void)jumpBack{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
