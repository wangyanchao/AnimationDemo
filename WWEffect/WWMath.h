//
//  WWMath.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/2.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WWMath : NSObject

+ (float) CLAW:(float) current min:(float) min max:(float) max;
+ (float)  safeRate:(float) v1 v2:(float) v2;
+ (float) pow:(float) v;
@end




