//
//  WWManager.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "WWEffect.h"
#import "WWContinuedEffect.h"

@interface UIView(FORACTION)
- (void) setPostion:(CGPoint) pos;
- (void) setPostion:(float) x y:(float) y;
- (void) setscale:(float) scale;
- (void) setSize:(CGSize) size;
- (void) setWidth:(float)width height:(float)height;

- (void) runAction:(WWEffect*)  effect;
- (void) stopAction;
@end


@interface WWManager : NSObject

@property (nonatomic, strong) NSMutableArray *effectArrays;

@property (nonatomic, strong) NSTimer *timer;

+ (WWManager *)sharedManager;

- (void) addeffect:(WWEffect*) effect;

- (void) removeEffect:(WWContinuedEffect*) effect;

@end
