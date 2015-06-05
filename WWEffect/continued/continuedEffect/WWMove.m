//
//  WWMove.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWMove.h"
#import "WWManager.h"
#import "WWMath.h"

@implementation WWMove

+ (WWMove*) create:(CGPoint) pos  time:(float) time
{
    WWMove * move = [[WWMove alloc] init];
    move._end = pos;
    move._maxTime = time;
    return move;
}

- (void)reset
{
    [super reset];
}

- (void)reveal
{
    [super reveal];
    
    CGPoint tem = self._begin;
    self._begin = self._end;
    self._end = tem;
}

- (void) setTarget:(id)target
{
    [super setTarget:target];
    UIView* view = (UIView*) target;
    self._begin = view.frame.origin;
}
- (void) excute:(float)rate
{
    if (!self._target) {
        self._isDone = YES;
        return;
    }
    if (self._isDone) {
        return;
    }
    float x = self._begin.x * (1 - rate) + self._end.x * rate;
    float y = self._begin.y * (1 - rate) + self._end.y * rate;
    [self._target setPostion:x y:y];
}

- (void) caculate:(float)dt
{
    self._currentTime +=dt;
    
    float rate = [WWMath safeRate:self._currentTime v2:self._maxTime];
    
    [self excute:[WWMath CLAW:rate min:0 max:1]];
    
    if (self._currentTime >= self._maxTime) {
        self._isDone = YES;
    }
}

@end
