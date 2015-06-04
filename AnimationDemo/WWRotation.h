//
//  WWRotation.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWRotation : WWContinuedEffect
@property (nonatomic,assign) float _begin;
@property (nonatomic,assign) float _end;

+ (WWRotation*) create:(float) angle  time:(float) time;
@end
