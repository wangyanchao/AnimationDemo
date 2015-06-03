//
//  WWManager.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WWEffect.h"


@interface UIView(FORACTION)
- (void) setPostion:(CGPoint) pos;
- (void) setPostion:(float) x y:(float) y;

- (void) runAction:(WWEffect*)  effect;
- (void) stopAction;
@end


@interface WWManager : NSObject

@property (nonatomic, strong) NSMutableArray *effectArrays;

@property (nonatomic, strong) NSTimer *timer;

+ (WWManager *)sharedManager;

- (void) addeffect:(WWEffect*) effect;

@end
