//
//  WWReversal.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWReversal.h"
#import "WWMove.h"
#import "WWAlpha.h"

@implementation WWReversal
@synthesize _target;
+ (WWReversal*) create:(WWEffect*) effect{
    WWReversal* current = [[WWReversal alloc] init];
    current._target = effect;
    return current;
}

- (void)reset{

    [super reset];
    self._isReveral = NO;
}

- (void) setTarget:(id)target
{
    [self._target setTarget:target];
}

- (void) caculate:(float)dt
{
    [_target caculate:dt];
    if (_target._isDone)
    {
        if (!self._isReveral)
        {
            [self._target reset];
            [self._target reveal];
            self._isReveral = YES;
        }else{
            self._isDone = YES;
        }
        
        
    }
   

}

@end
