//
//  ListViewController.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListModuleInterface.h"
#import "ListViewInterface.h"

@protocol ListViewInterface;
@protocol ListModuleInterface;

@interface ListViewController : UITableViewController<ListViewInterface>

@property (strong, nonatomic) id<ListModuleInterface> eventHandler;

@end
