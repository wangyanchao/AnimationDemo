//
//  WWCallBack.h
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/4.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "WWEffect.h"

typedef void(^callback)(void);

@interface WWCallBack : WWEffect

@property (nonatomic,strong) WWEffect* _target;
@property (nonatomic,assign) callback _callback;
+ (WWCallBack*) create:(WWEffect*) effect callback:(void (^)(void))callback;
@end
