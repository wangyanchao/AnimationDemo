//
//  WWQuadraticEaseOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWQuadraticEaseOut.h"

@implementation WWQuadraticEaseOut
+ (WWQuadraticEaseOut*) create:(WWContinuedEffect*) effect
{
    WWQuadraticEaseOut* current = [[WWQuadraticEaseOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = QuadraticEaseOut(rate);
    [super excute:rate];
}
@end
