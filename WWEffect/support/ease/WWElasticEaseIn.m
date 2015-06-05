//
//  WWElasticEaseIn.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWElasticEaseIn.h"

@implementation WWElasticEaseIn
+ (WWElasticEaseIn*) create:(WWContinuedEffect*) effect
{
    WWElasticEaseIn* current = [[WWElasticEaseIn alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = ElasticEaseIn(rate);
    [super excute:rate];
}
@end
