//
//  AddPresenter.m
//  Viper Demo
//
//  Created by ZhangMing on 12/6/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import "AddPresenter.h"
#import "AddWireframe.h"

@implementation AddPresenter

- (void)cancelAction
{
    [self.addWireframe dismissAddInterface];
}

- (void)dealloc
{
    NSLog(@"AddPresenter dealloc");
}

@end
