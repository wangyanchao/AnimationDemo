//
//  WWDelay.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/5.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWDelay.h"

@implementation WWDelay
@synthesize _time;

+ (WWDelay *)create: (float)time
{
    WWDelay * delay = [[WWDelay alloc] init];
    delay._time = time;
    delay._begin = time;
    return delay;
}
- (void)reset{
    [super reset];
    self._time = self._begin;
}

- (void) caculate:(float)dt
{
    self._time -= dt;
    if (self._time <= 0) {
        self._isDone = YES;
    }
}

@end
