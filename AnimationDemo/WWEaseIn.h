//
//  WWEaseIn.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"
#import "WWContinuedEffect.h"
@interface WWEaseIn : WWEffect
@property (nonatomic,assign) float  _maxTime;
@property (nonatomic,assign) float  _currentTime;
@property (nonatomic,strong) WWContinuedEffect* _target;
+ (WWEaseIn*) create:(WWContinuedEffect*) effect;
@end
