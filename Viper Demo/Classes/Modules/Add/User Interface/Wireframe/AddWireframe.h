//
//  AddWireframe.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AddViewController.h"

@interface AddWireframe : NSObject

@property (weak, nonatomic) AddViewController *viewController;

- (void)presentAddInterfaceFromViewController:(UIViewController *)viewController;
- (void)dismissAddInterface;

@end
