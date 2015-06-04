//
//  WWSize.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWSize.h"
#import "WWManager.h"

@implementation WWSize
+ (WWSize*) create:(CGSize) size  time:(float) time;
{
    WWSize * s = [[WWSize alloc] init];
    s._end = size;
    s._maxTime = time;
    return s;
}

- (void)reset{
    [super reset];
}

- (void) setTarget:(id)target
{
    [super setTarget:target];
    UIView* view = (UIView*) target;
    self._begin = view.frame.size;

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
    float width     = (self._end.width - self._begin.width)*rate +self._begin.width;
    float height    = (self._end.height - self._begin.height)*rate +self._begin.height;
    [self._target setWidth:width height:height];
//    rate = (self._end-1) *rate +1;
    
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
