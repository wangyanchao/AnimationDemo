//
//  WWElasticEaseInOut.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWElasticEaseInOut.h"

@implementation WWElasticEaseInOut
+ (WWElasticEaseInOut*) create:(WWContinuedEffect*) effect
{
    WWElasticEaseInOut* current = [[WWElasticEaseInOut alloc] init];
    current._target = effect;
    current._maxTime = effect._maxTime;
    return current;
}

- (void) excute:(float)rate
{
    rate = ElasticEaseInOut(rate);
    [super excute:rate];
}
@end
