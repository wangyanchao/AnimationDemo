//
//  WWRepeat.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWRepeat.h"

@implementation WWRepeat
@synthesize _target;

+ (WWRepeat*) create:(WWEffect*) effect times:(int)times{
    
    WWRepeat * repeat = [[WWRepeat alloc] init];
    repeat._times = times;
    repeat._currentTime = 0;
    repeat._target = effect;
    return repeat;
}

- (void) setTarget:(id)target
{
    [self._target setTarget:target];
}

- (void) caculate:(float)dt
{
    [_target caculate:dt];
    if (_target._isDone)
    {
        self._currentTime ++;
        if (self._currentTime <self._times) {
            [self._target reset];
        }else{
        
            self._isDone = YES;
        }
    }
}

@end
