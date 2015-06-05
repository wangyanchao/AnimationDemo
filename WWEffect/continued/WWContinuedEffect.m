//
//  WWContinuedEffect.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@implementation WWContinuedEffect
@synthesize _maxTime;
@synthesize _currentTime;
@synthesize _target;

- (void) reset
{
    [super reset];
    self._currentTime = 0;
}

- (void) setTarget:(id) target
{
    if ([target isKindOfClass:[UIView class]]) {
        self._target = target;
    }
}
@end
