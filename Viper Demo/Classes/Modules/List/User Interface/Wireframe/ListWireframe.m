//
//  ListWireframe.m
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import "ListWireframe.h"
#import "ListViewController.h"
#import "ListPresenter.h"
#import "ListInteractor.h"
#import "AddWireframe.h"

static NSString *ListViewControllerIdentifier = @"ListViewController";

@implementation ListWireframe

- (void)presentListInterfaceFromWindow:(UIWindow *)window
{
    ListViewController *listViewController = [self listViewControllerFromStoryboard];
    
    ListInteractor *listInteractor = [[ListInteractor alloc] init];
    
    ListPresenter *listPresenter = [[ListPresenter alloc] init];
    listPresenter.listInteractor = listInteractor;
    listPresenter.viewController = listViewController;
    listPresenter.wireframe = self;
    
    listInteractor.output = listPresenter;
    
    listViewController.eventHandler = listPresenter;
    self.viewController = listViewController;
    
    [self.rootWireframe showRootViewController:listViewController inWindow:window];
}

- (void)presentAddInterface
{
    AddWireframe *addWireframe = [[AddWireframe alloc] init];
    
    [addWireframe presentAddInterfaceFromViewController:self.viewController];
}


- (ListViewController *)listViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    ListViewController *listViewController = [storyboard instantiateViewControllerWithIdentifier:ListViewControllerIdentifier];
    return listViewController;
}

- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

@end
