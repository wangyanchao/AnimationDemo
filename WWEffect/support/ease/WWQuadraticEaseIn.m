//
//  WWQuadraticEaseIn.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWQuadraticEaseIn.h"

@implementation WWQuadraticEaseIn

+ (WWQuadraticEaseIn*) create:(WWContinuedEffect*) effect
{
    WWQuadraticEaseIn* current = [[WWQuadraticEaseIn alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = QuadraticEaseIn(rate);
    [super excute:rate];
}

@end
