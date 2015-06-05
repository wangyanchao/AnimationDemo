//
//  WWScaleFromTo.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWScaleFromTo : WWContinuedEffect
@property (nonatomic,assign) float _begin;
@property (nonatomic,assign) float _end;

+ (WWScaleFromTo*) createFrom:(float) from to:(float)to time:(float) time;
@end
