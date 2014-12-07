//
//  ListPresenter.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ListModuleInterface.h"
#import "ListViewInterface.h"
#import "ListInteractor.h"
#import "ListInteractorIO.h"
#import "ListWireframe.h"

@interface ListPresenter : NSObject<ListModuleInterface, ListInteractorOutput>

@property (strong, nonatomic) id<ListInteractorInput> listInteractor;

@property (weak, nonatomic) UIViewController<ListViewInterface> *viewController;

@property (strong, nonatomic) ListWireframe *wireframe;

@end
