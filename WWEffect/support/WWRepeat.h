//
//  WWRepeat.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWRepeat : WWEffect
@property (nonatomic,strong) WWEffect* _target;
@property (nonatomic,assign) int _times;
@property (nonatomic,assign) int _currentTime;

+ (WWRepeat*) create:(WWEffect*) effect times:(int)times;

@end
