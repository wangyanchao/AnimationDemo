//
//  WWAlpha.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWAlpha.h"

@implementation WWAlpha
@synthesize _begin;
@synthesize _end;

+ (WWAlpha*) create:(float) alpha time:(float) time
{
    WWAlpha* effect = [[WWAlpha alloc] init];
    effect._end = alpha;
    effect._maxTime = time;
    return effect;
}
- (void) reset
{
    [super reset];
}

- (void) reveal
{
    [super reveal];
    
    float tem = self._begin;
    self._begin = self._end;
    self._end = tem;
}

- (void) setTarget:(id)target
{
    [super setTarget:target];
    UIView* view = (UIView*) target;
    self._begin = view.alpha;
}

- (void) excute:(float)rate
{
    if (!self._target) {
        self._isDone = YES;
        return;
    }
    if (self._isDone) {
        return;
    }
    self._target.alpha = self._begin * (1 - rate) + self._end * rate;
}

- (void) caculate:(float)dt
{
    self._currentTime +=dt;
    
    float rate = [WWMath safeRate:self._currentTime v2:self._maxTime];
    
    [self excute:[WWMath CLAW:rate min:0 max:1]];
    
    if (self._currentTime >= self._maxTime) {
        self._isDone = YES;
    }
}
@end
