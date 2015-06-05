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
@property (nonatomic,weak)id _target;
@property (nonatomic,assign)SEL _selecter;
+ (WWCallBack*) create:(id)target selecter:(SEL)selecter;
+ (WWCallBack*) createRemove;
@end
