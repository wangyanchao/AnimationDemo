//
//  WWBezier.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWBezier : WWContinuedEffect
@property (nonatomic,assign) CGPoint  _begin;
@property (nonatomic,assign) CGPoint  _end;
@property (nonatomic,assign) CGPoint  _controlPoint;

+ (WWBezier*) create:(CGPoint) pos  controlPoint:(CGPoint)controlPoint time:(float) time;
@end
