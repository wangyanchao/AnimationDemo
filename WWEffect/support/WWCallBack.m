//
//  WWCallBack.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWCallBack.h"


@implementation WWCallBack
@synthesize _target;
@synthesize _selecter;

+ (WWCallBack*) create:(id)target selecter:(SEL)selecter
{
    WWCallBack* current = [[WWCallBack alloc] init];
    current._target = target;
    current._selecter = selecter;
    return current;
}

+ (WWCallBack*) createRemove{

    WWCallBack* current = [[WWCallBack alloc] init];
    return current;
    
}

- (void) setTarget:(id)target
{
    if (self._target == NULL && [target isKindOfClass:[UIView class]]) {
        self._selecter = @selector(removeFromSuperview);
        self._target = target;
    }
}

- (void) caculate:(float)dt
{
    if (!self._isDone) {
        self._isDone = YES;
        if (self._target != nil && self._selecter !=nil) {
            if ([self._target respondsToSelector:self._selecter]) {
                [self._target performSelector:self._selecter];
            }
        }
    }
}

@end
