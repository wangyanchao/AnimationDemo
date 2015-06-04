//
//  WWScaleFromTo.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWScaleFromTo.h"
#import "WWManager.h"

@implementation WWScaleFromTo
@synthesize  _begin;
@synthesize  _end;
+ (WWScaleFromTo*) createFrom:(float) from to:(float)to time:(float) time;
{
    WWScaleFromTo * sca = [[WWScaleFromTo alloc] init];
    sca._begin = from;
    sca._end = to;
    sca._maxTime = time;
    return sca;
}

- (void)reset{
    [super reset];
}

- (void) setTarget:(id)target
{
    [super setTarget:target];
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
    
    rate = self._begin * (1 - rate) + self._end * rate;
    [self._target setscale:rate];
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
