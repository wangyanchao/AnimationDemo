//
//  WWEaseIn.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEaseIn.h"

@implementation WWEaseIn
@synthesize _target;
@synthesize _maxTime;
@synthesize  _currentTime;
+ (WWEaseIn*) create:(WWContinuedEffect*) effect
{
    WWEaseIn* current = [[WWEaseIn alloc] init];
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
    float halfRate = [WWMath pow:[WWMath safeRate:halfTime v2:self._maxTime]];
    float rate ;
    
    if (self._currentTime < halfTime) {
       rate = [WWMath pow:[WWMath safeRate:self._currentTime v2:self._maxTime]];

    }else{
        rate = [WWMath safeRate:(self._currentTime- halfTime) v2:self._maxTime] + halfRate;
        
    }
 
    [self excute:[WWMath CLAW:rate min:0 max:1]];
    
    if (rate >=1) {
        self._isDone = YES;
    }
    

}
@end
