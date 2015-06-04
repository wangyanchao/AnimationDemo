//
//  WWCallBack.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWCallBack.h"

@implementation WWCallBack
@synthesize _target;
@synthesize _callback;

+ (WWCallBack*) create:(WWEffect*) effect callback:(void (^)(void))callback
{
    WWCallBack* current = [[WWCallBack alloc] init];
    current._target = effect;
    current._callback = callback;
    return current;
}

- (void) setTarget:(id)target
{
    [self._target setTarget:target];
}

- (void) caculate:(float)dt
{
    [_target caculate:dt];
    if (_target._isDone == YES) {
        self._isDone = YES;
        self._callback();
    }
}

@end
