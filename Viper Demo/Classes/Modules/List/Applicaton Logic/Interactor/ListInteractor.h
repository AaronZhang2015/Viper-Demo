//
//  ListInteractor.h
//  Viper Demo
//
//  Created by ZhangMing on 12/5/14.
//  Copyright (c) 2014 ZhangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListInteractorIO.h"

@interface ListInteractor : NSObject<ListInteractorInput>

@property (weak, nonatomic) id<ListInteractorOutput> output;

@end
