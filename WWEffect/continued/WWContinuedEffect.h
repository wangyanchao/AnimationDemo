//
//  WWContinuedEffect.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWContinuedEffect : WWEffect

@property (nonatomic,assign) float  _maxTime;
@property (nonatomic,assign) float  _currentTime;

@property (nonatomic,weak) UIView*  _target;


- (void) setTarget:(id) target;
@end
