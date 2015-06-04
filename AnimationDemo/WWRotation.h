//
//  WWRotation.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWRotation : WWContinuedEffect
@property (nonatomic,assign) float _beginAngle;
@property (nonatomic,assign) float _endAngle;

+ (WWRotation*) create:(float) angle  time:(float) time;
@end
