//
//  AddWireframe.m
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import "AddWireframe.h"
#import "AddPresenter.h"

static NSString *AddViewControllerIdentifier = @"AddViewController";

@implementation AddWireframe

- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController
{
    AddViewController *addViewController = [self addViewControllerFromStoryboard];
    AddPresenter *addPresenter = [[AddPresenter alloc] init];
    addPresenter.addWireframe = self;
    
    AddInteractor *addInteractor = [[AddInteractor alloc] init];
    addPresenter.addInteractor = addInteractor;
    
    addViewController.eventHandler = addPresenter;
    
    self.viewController = addViewController;
    
    [viewController presentViewController:addViewController animated:YES completion:nil];
}

- (void)dismissAddInterface
{
    [self.viewController dismissViewControllerAnimated:YES completion:nil];
}

- (AddViewController *)addViewControllerFromStoryboard
{
    UIStoryboard *storyboard = [self mainStoryboard];
    AddViewController *addViewController = [storyboard instantiateViewControllerWithIdentifier:AddViewControllerIdentifier];
    return addViewController;
}

- (UIStoryboard *)mainStoryboard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    return storyboard;
}

- (void)dealloc
{
    NSLog(@"AddWireframe dealloc");
}


@end
