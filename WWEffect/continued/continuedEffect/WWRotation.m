//
//  WWRotation.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWRotation.h"
#import "WWManager.h"

@implementation WWRotation
+ (WWRotation*) create:(float) angle  time:(float) time;
{
    WWRotation * rotation = [[WWRotation alloc] init];
    rotation._end = angle;
    rotation._maxTime = time;
    return rotation;
}

- (void)reset{
    [super reset];
}
- (void)reveal
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
    CGAffineTransform trans = view.transform;
    self._begin = trans.b;
    
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

    rate = self._begin*(1-rate) + self._end*rate;
    [self._target setAngle:rate];
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
