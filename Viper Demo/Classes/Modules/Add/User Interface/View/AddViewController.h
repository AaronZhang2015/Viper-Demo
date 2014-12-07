//
//  AddViewController.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddPresenter.h"
#import "AddModuleInterface.h"

@interface AddViewController : UIViewController

@property (strong, nonatomic) id<AddModuleInterface> eventHandler;

@end
