//
//  WWElasticEaseOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWElasticEaseOut.h"

@implementation WWElasticEaseOut
+ (WWElasticEaseOut*) create:(WWContinuedEffect*) effect
{
    WWElasticEaseOut* current = [[WWElasticEaseOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = ElasticEaseOut(rate);
    [super excute:rate];
}
@end
