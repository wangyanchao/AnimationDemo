//
//  WWSize.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWContinuedEffect.h"

@interface WWSize : WWContinuedEffect
@property (nonatomic,assign) CGSize _begin;
@property (nonatomic,assign) CGSize _end;

+ (WWSize*) create:(CGSize) size  time:(float) time;
@end
