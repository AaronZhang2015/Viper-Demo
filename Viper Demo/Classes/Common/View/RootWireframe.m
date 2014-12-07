//
//  RootWireframe.m
//  Viper Demo
//
//  Created by ZhangMing on 12/6/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import "RootWireframe.h"

@implementation RootWireframe

- (void)showRootViewController:(UIViewController *)viewController
                      inWindow:(UIWindow *)window
{
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    navigationController.viewControllers = @[viewController];
}


- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    
    return navigationController;
}

@end
