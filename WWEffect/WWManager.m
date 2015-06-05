//
//  WWManager.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWManager.h"
#import "WWMath.h"
//#import "WWEffect.h"

#define FrameInterval   60.0



@implementation UIView(FORACTION)

- (void) setOffset:(float)x y:(float)y
{
    CGAffineTransform curTrans = self.transform;
    curTrans.tx = x;
    curTrans.ty = y;
    self.transform = curTrans;
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

CGAffineTransform makeTransform(CGFloat xScale, CGFloat yScale,
                                CGFloat theta, CGFloat tx, CGFloat ty)
{
    CGAffineTransform transform = CGAffineTransformIdentity;
    
    transform.a = xScale * cos(theta);
    transform.b = yScale * sin(theta);
    transform.c = xScale * -sin(theta);
    transform.d = yScale * cos(theta);
    transform.tx = tx;
    transform.ty = ty;
    
    return transform;
}

- (void) setAngle:(float) angle
{
    CGAffineTransform curTrans = self.transform;
    //    transform.a = xScale * cos(theta);
    //    transform.c = xScale * -sin(theta);
    double theta = atan([WWMath safeDiv:-curTrans.c v2:curTrans.a]);
    double xScale = [WWMath safeDiv:curTrans.a v2:cos(theta)];
    double yScale = [WWMath safeDiv:curTrans.b v2:sin(theta)];
    double tx = curTrans.tx;
    double ty = curTrans.ty;
    
    self.transform =  makeTransform(xScale, yScale, angle, tx, ty);

}
- (void)setscale:(float) scale
{
    
    CGAffineTransform curTrans = self.transform;
    //    transform.a = xScale * cos(theta);
    //    transform.c = xScale * -sin(theta);
    double theta = atan([WWMath safeDiv:-curTrans.c v2:curTrans.a]);
    double tx = curTrans.tx;
    double ty = curTrans.ty;

    self.transform = makeTransform(scale, scale, theta, tx, ty);
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
