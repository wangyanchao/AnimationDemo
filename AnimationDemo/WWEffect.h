//
//  WWEffect.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/1.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WWMath.h"
#import "easing.h"

@interface WWEffect : NSObject
@property (assign,nonatomic) BOOL   _isDone;

- (void) excute:(float) rate;
- (void) caculate:(float) dt;
- (void) reset;
- (void) reveal;

- (void) setTarget:(id) target;

@end
