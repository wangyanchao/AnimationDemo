//
//  WWRepeatForever.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWRepeatForever.h"

@implementation WWRepeatForever

@synthesize _target;

+ (WWRepeatForever*) create:(WWEffect*) effect;{
    
    WWRepeatForever * repeat = [[WWRepeatForever alloc] init];
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
        [self._target reset];
    }
}
@end
