//
//  WWSequential.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/3.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWSequential.h"

@implementation WWSequential
@synthesize _actionStack;

- (id) init
{
    self = [super init];
    if (self) {
        self._actionStack = [[NSMutableArray alloc] init];
    }
    return self;
}
+ (WWSequential*) createWithTowAction:(WWEffect*) effect1  effect2:(WWEffect*) effect2
{
    WWSequential* action = [[WWSequential alloc] init];
    [action._actionStack addObject:effect1];
    [action._actionStack addObject:effect2];
    return action;
}
+ (WWSequential*) createWithTowActions:(NSArray *)actionStack
{
    WWSequential* action = [[WWSequential alloc] init];
    [action._actionStack addObjectsFromArray:actionStack];
    return action;
}

- (void)reset
{
    [super reset];
    for (WWEffect* effect in self._actionStack) {
        [effect reset];
    }
}

- (void)reveal
{
    [super reveal];
    for (WWEffect* effect in self._actionStack) {
        [effect reveal];
    }
}

- (void) setTarget:(id)target
{
    for (WWEffect* effect in self._actionStack) {
        [effect setTarget:target];
    }
}
- (void) excute:(float)rate
{
    
}

- (void) caculate:(float)dt
{
    self._isDone = true;
    
    for (WWEffect* effect in self._actionStack)
    {
        
        if (effect._isDone == false)
        {
            self._isDone = false;
        }
        if (effect._isDone)
        {
            continue;
        }
        [effect caculate:dt];
        break;
    }
}

@end
