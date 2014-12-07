//
//  ListWireframe.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RootWireframe.h"

@class ListViewController;

@interface ListWireframe : NSObject

@property (strong, nonatomic) RootWireframe *rootWireframe;
@property (weak, nonatomic) ListViewController *viewController;

- (void)presentListInterfaceFromWindow:(UIWindow *)window;

- (void)presentAddInterface;

@end
