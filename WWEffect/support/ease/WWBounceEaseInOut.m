//
//  WWBounceEaseInOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWBounceEaseInOut.h"

@implementation WWBounceEaseInOut
+ (WWBounceEaseInOut*) create:(WWContinuedEffect*) effect
{
    WWBounceEaseInOut* current = [[WWBounceEaseInOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = BounceEaseInOut(rate);
    [super excute:rate];
}
@end
