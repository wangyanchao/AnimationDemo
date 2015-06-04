//
//  WWAlphaEffect.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWAlphaEffect.h"
#import "WWMath.h"
@implementation WWAlphaEffect
@synthesize _begin;
@synthesize _end;

+ (WWAlphaEffect*) create:(float) alpha time:(float) time
{
    WWAlphaEffect* effect = [[WWAlphaEffect alloc] init];
    effect._end = alpha;
    effect._maxTime = time;
    return effect;
}
- (void) reset
{
    [super reset];
    //TODO:看看回头该干啥
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
