//
//  WWManager.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWManager.h"
//#import "WWEffect.h"

#define FrameInterval   60.0



@implementation UIView(FORACTION)
- (void) setPostion:(CGPoint) pos
{
    CGRect frame = self.frame;
    frame.origin = pos;
    self.frame = frame;
}
- (void) setPostion:(float) x y:(float) y
{
    [self setPostion:CGPointMake(x, y)];
}

- (void) setSize:(CGSize) size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
- (void) setWidth:(float)width height:(float)height
{
    [self setSize:CGSizeMake(width, height)];
}

- (void)setscale:(float) scale
{
    CGAffineTransform trans = CGAffineTransformIdentity;
    [self setTransform:CGAffineTransformScale(trans, scale, scale)];
    NSLog(@"%f",scale);
}

- (void) runAction:(WWEffect*)  effect
{
    if (effect) {
        [effect setTarget:self];
        [[WWManager sharedManager] addeffect:effect];
    }
}

- (void) stopAction
{
    
}
@end


@implementation WWManager

static WWManager *_manager;

+ (WWManager *)sharedManager{
    static dispatch_once_t once;
    dispatch_once(&once, ^ {
        _manager=[[WWManager alloc]init];
        [_manager initManager];
    });
    return _manager;
}

- (void)initManager{

    _effectArrays = [[NSMutableArray alloc] init];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1/FrameInterval target:self selector:@selector(update:) userInfo:nil repeats:YES];
    
}

- (void) addeffect:(WWEffect*) effect
{
    if (!effect) {
        return;
    }
    [self.effectArrays addObject:effect];
}

- (void) removeEffect:(WWContinuedEffect*) effect;
{
    for (WWEffect *effect in _effectArrays) {
        
        [_effectArrays removeObject:effect];    
    }
}

- (void)update:(NSTimer*) timer
{
    float dt = timer.timeInterval;
    NSMutableArray* temp = [[NSMutableArray alloc] init];
    for (WWEffect *effect in _effectArrays) {
        [effect caculate:dt];
        if (effect._isDone) {
            [temp addObject:effect];
        }
    }
    [_effectArrays removeObjectsInArray:temp];
    
}

@end
