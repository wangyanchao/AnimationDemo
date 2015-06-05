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
    return delay;
}

- (void) caculate:(float)dt
{
//    self._time -=dt;
//    if (self._) {
//        <#statements#>
//    }
}

@end
