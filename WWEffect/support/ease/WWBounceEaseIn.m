//
//  WWBounceEaseIn.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWBounceEaseIn.h"

@implementation WWBounceEaseIn
+ (WWBounceEaseIn*) create:(WWContinuedEffect*) effect
{
    WWBounceEaseIn* current = [[WWBounceEaseIn alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = BounceEaseIn(rate);
    [super excute:rate];
}
@end
