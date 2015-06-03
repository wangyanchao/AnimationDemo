//
//  WWEaseOut.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/3.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"
#import "WWContinuedEffect.h"
@interface WWEaseOut : WWEffect
@property (nonatomic,assign) float  _maxTime;
@property (nonatomic,assign) float  _currentTime;
@property (nonatomic,strong) WWContinuedEffect* _target;
+ (WWEaseOut*) create:(WWContinuedEffect*) effect;
@end
