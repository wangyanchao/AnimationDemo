//
//  WWQuadraticEaseInOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWQuadraticEaseInOut.h"

@implementation WWQuadraticEaseInOut
+ (WWQuadraticEaseInOut*) create:(WWContinuedEffect*) effect
{
    WWQuadraticEaseInOut* current = [[WWQuadraticEaseInOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = QuadraticEaseInOut(rate);
    [super excute:rate];
}
@end
