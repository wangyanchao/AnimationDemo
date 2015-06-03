//
//  WWSpwn.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"
@interface WWSpwn : WWEffect
@property (nonatomic,strong) NSMutableArray*    _actionStack;
+ (WWSpwn*) createWithTowAction:(WWEffect*) effect1  effect2:(WWEffect*) effect2;
@end
