//
//  WWBezier.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWBezier.h"
#import "WWManager.h"
#import "WWMath.h"

@implementation WWBezier
+ (WWBezier*) create:(CGPoint) pos  controlPoint:(CGPoint)controlPoint time:(float) time;
{
    WWBezier * move = [[WWBezier alloc] init];
    move._end = pos;
    move._maxTime = time;
    move._controlPoint = controlPoint;
    return move;
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
    float x1 = self._begin.x * (1 - rate) + self._controlPoint.x * rate;
    float y1 = self._begin.y * (1 - rate) + self._controlPoint.y * rate;
    
    float x2 = self._controlPoint.x * (1 - rate) + self._end.x * rate;
    float y2 = self._controlPoint.y * (1 - rate) + self._end.y * rate;
    
    float x3 = x1 * (1 - rate) + x2 * rate;
    float y3 = y1 * (1 - rate) + y2 * rate;
    
    [self._target setPostion:x3 y:y3];
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
