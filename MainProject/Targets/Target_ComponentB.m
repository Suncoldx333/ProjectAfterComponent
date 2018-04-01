//
//  Target_ComponentB.m
//  MainProject
//
//  Created by Zhaoyun Wang on 2018/3/30.
//  Copyright © 2018年 Zhaoyun Wang. All rights reserved.
//

#import "Target_ComponentB.h"
#import "BViewController.h"

@implementation Target_ComponentB

-(UIViewController *)Action_viewController:(NSDictionary *)params{
    BViewController *bv = [[BViewController alloc] init];
    return bv;
}

@end
