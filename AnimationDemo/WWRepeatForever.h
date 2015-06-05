//
//  WWRepeatForever.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWRepeatForever : WWEffect
@property (nonatomic,strong) WWEffect* _target;
+ (WWRepeatForever*) create:(WWEffect*) effect;
@end
