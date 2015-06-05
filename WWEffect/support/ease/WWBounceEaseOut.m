//
//  WWBounceEaseOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWBounceEaseOut.h"

@implementation WWBounceEaseOut
+ (WWBounceEaseOut*) create:(WWContinuedEffect*) effect
{
    WWBounceEaseOut* current = [[WWBounceEaseOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = BounceEaseOut(rate);
    [super excute:rate];
}
@end
