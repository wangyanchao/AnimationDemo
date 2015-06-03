//
//  WWMove.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWMove : WWContinuedEffect
@property (nonatomic,assign) CGPoint  _begin;
@property (nonatomic,assign) CGPoint  _end;

+ (WWMove*) create:(CGPoint) pos  time:(float) time;
@end
