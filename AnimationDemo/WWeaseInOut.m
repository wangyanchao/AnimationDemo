//
//  WWeaseInOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWeaseInOut.h"

@implementation WWeaseInOut
@synthesize _target;
@synthesize _maxTime;
@synthesize  _currentTime;
+ (WWeaseInOut*) create:(WWContinuedEffect*) effect
{
    WWeaseInOut* current = [[WWeaseInOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    if (!self._target) {
        self._isDone = YES;
        return;
    }
    
    [self._target excute:rate];
}

- (void) setTarget:(id)target
{
    [self._target setTarget:target];
}

- (void) caculate:(float)dt
{
    self._currentTime +=dt;
    if (self._currentTime > self._maxTime) {
        self._currentTime = self._maxTime;
    }
    float  rate = [WWMath safeRate:self._currentTime v2:self._maxTime] * 2;
    rate =  [WWMath pow:rate] * 2;
    
    if (rate < 1) {
         [self excute:rate];
    }else{
        rate -= 1;
        [self excute:rate];
    }
    if (rate >=1) {
        self._isDone = YES;
    }
    
    
}
@end
