//
//  WWAlpha.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWAlpha : WWContinuedEffect
@property (nonatomic,assign) float _begin;
@property (nonatomic,assign) float _end;

+ (WWAlpha*) create:(float) alpha time:(float) time;

- (void) excute:(float)rate;
- (void) caculate:(float)dt;
@end
