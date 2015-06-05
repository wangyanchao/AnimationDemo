//
//  WWReversal.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

@interface WWReversal : WWEffect
@property (nonatomic,strong) WWEffect* _target;
@property (nonatomic,assign) BOOL _isReveral;
+ (WWReversal*) create:(WWEffect*) effect;
@end
