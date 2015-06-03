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
    
    float halfTime = self._maxTime/2;
    float rate ;
    
    if (self._currentTime < halfTime) {
        rate = [WWMath safeRate:self._currentTime v2:self._maxTime];
        
    }else{
        
//        rate = [WWMath safeRate:[WWMath pow:(self._maxTime - self._currentTime)/self._maxTime] v2:self._maxTime] +0.5;
        rate = [WWMath pow:[WWMath safeRate:(self._maxTime - self._currentTime) v2:self._maxTime]] + 0.5;
    }
    
    NSLog(@"%f",rate);
    
    [self excute:[WWMath CLAW:rate min:0 max:1]];
    
    if (rate >=1) {
        self._isDone = YES;
    }
    
    
}
@end
