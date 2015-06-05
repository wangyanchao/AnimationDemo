//
//  WWDelay.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/5.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWDelay : WWEffect

//@property (nonatomic)
@property (nonatomic, assign)float  _time;
+ (WWDelay *)create: (float)time;
@end
