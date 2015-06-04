//
//  WWEaseOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/3.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEaseOut.h"

@implementation WWEaseOut
@synthesize _target;
@synthesize _maxTime;
@synthesize  _currentTime;
+ (WWEaseOut*) create:(WWContinuedEffect*) effect
{
    WWEaseOut* current = [[WWEaseOut alloc] init];
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
    
    float rate = [WWMath safeRate:self._currentTime v2:self._maxTime] ;
    
    rate = SineEaseOut(rate);

    NSLog(@"%f",rate);
    
    [self excute:[WWMath CLAW:rate min:0 max:1]];
    
    if (self._currentTime >=self._maxTime) {
        self._isDone = YES;
    }
    
    
}
@end