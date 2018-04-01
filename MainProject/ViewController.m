//
//  ViewController.m
//  MainProject
//
//  Created by Zhaoyun Wang on 2018/3/29.
//  Copyright © 2018年 Zhaoyun Wang. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator+Component_A.h>

@interface ViewController ()

@end

@implementation ViewController

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
    [jumpBt setTitle:@"JumpA" forState:UIControlStateNormal];
    [jumpBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [jumpBt addTarget:self action:@selector(jumpNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBt];
}

-(void)jumpNext{
    
//    [self respondsTest];
    
    UIViewController *av = [[CTMediator sharedInstance] A_viewController];
    [self.navigationController pushViewController:av animated:YES];
    
}

-(void)respondsTest{
    Class targetClass = NSClassFromString(@"Helloyooooo");
    NSObject *target = [[targetClass alloc] init];
    SEL action = NSSelectorFromString(@"Tinkersd");
    if ([target respondsToSelector:action]) {
        [target performSelector:action];
    }
}

@end
