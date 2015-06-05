//
//  WWSequential.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/3.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWSequential : WWEffect
@property (nonatomic,strong) NSMutableArray*    _actionStack;
+ (WWSequential*) createWithTowAction:(WWEffect*) effect1  effect2:(WWEffect*) effect2;
+ (WWSequential*) createWithTowActions:(NSArray *)actionStack;
@end
