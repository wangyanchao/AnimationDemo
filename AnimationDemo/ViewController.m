//
//  ViewController.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/1.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "ViewController.h"
#import "WWEffect.h"
#import "WWManager.h"
#import "WWMove.h"
#import "WWBezier.h"
#import "WWSpwn.h"
#import "WWSequential.h"
#import "WWCallBack.h"
#import "WWQuadraticEaseIn.h"
#import "WWScale.h"
#import "WWSize.h"
#import "WWElasticEaseInOut.h"
#import "WWElasticEaseOut.h"
#import "WWScaleFromTo.h"
#import "WWRotation.h"
#import "WWReversal.h"
#import "WWAlpha.h"
#import "WWRepeat.h"
#import "WWRepeatForever.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     [self.aView setscale:0.0];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    
    WWAlpha * alpha = [WWAlpha create:0.5 time:2];
    WWScale*  scale = [WWScale create:0.1 time:2];
    WWBezier* be = [WWBezier create:CGPointMake(0, 0) controlPoint:CGPointMake(100, 600) time:2];
    WWElasticEaseOut* ease = [WWElasticEaseOut create:be];
    WWRotation * ro = [WWRotation create:-2*M_PI time:2];
    NSArray* arr = [NSArray arrayWithObjects:alpha,ease,scale,ro, nil];
    WWSpwn * seq = [WWSpwn createWithTowActions:arr];

    WWReversal * rev = [WWReversal create:seq];
    WWRepeat* repeat = [WWRepeat create:rev times:30000];

    
    [self.aView runAction:repeat];
    
 
    //[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopAnimation:) userInfo:move repeats:NO];
}


- (void)stopAnimation:(NSTimer *)timer;
{
    [[WWManager sharedManager] removeEffect:[timer userInfo]];
}
@end
