//
//  WWMath.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//


#import "WWMath.h"

@implementation WWMath

+ (float) CLAW:(float) current min:(float) min max:(float) max
{
    if (current < min) {
        return min;
    }
    if (current > max) {
        return max;
    }
    return current;
}

+ (float)  safeRate:(float) v1 v2:(float) v2
{
    if (v2 == 0 ) {
        return 1;
    }
    return v1 / v2;
}
+ (float) pow:(float) v
{
    return v * v;
}
@end
