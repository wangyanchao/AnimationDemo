//
//  WWScale.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWScale.h"
#import "WWManager.h"

@implementation WWScale
+ (WWScale*) create:(float) scale  time:(float) time;
{
    WWScale * sca = [[WWScale alloc] init];
    sca._end = scale;
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
    
    self._target.transform = CGAffineTransformIdentity;
    rate = (self._end-1) *rate +1;
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
