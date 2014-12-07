//
//  AddPresenter.h
//  Viper Demo
//
//  Created by ZhangMing on 12/6/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddInteractor.h"
#import "AddModuleInterface.h"

@class AddWireframe;

@interface AddPresenter : NSObject<AddModuleInterface>

@property (strong, nonatomic) AddWireframe *addWireframe;
@property (strong, nonatomic) AddInteractor *addInteractor;


@end
