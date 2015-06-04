//
//  ViewController.m
//  AnimationDemo
//
//  Created by wangyanchao on 15/6/1.
//  Copyright (c) 2015年 wangyanchao. All rights reserved.
//

#import "ViewController.h"
#import "WWEffect.h"
#import "WWAlphaEffect.h"
#import "WWManager.h"
#import "WWMove.h"
#import "WWBezier.h"
#import "WWSpwn.h"
#import "WWSequential.h"
#import "WWCallBack.h"
#import "WWQuadraticEaseIn.h"
#import "WWScale.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    
    WWMove* move = [WWMove create:CGPointMake(0, 0) time:1];
    WWScale *scale = [WWScale create:0.3 time:1];
    WWSpwn *spwn = [WWSpwn createWithTowAction:move effect2:scale];
    [self.aView runAction:spwn];
    
    
    
 
    //[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopAnimation:) userInfo:move repeats:NO];
}


- (void)stopAnimation:(NSTimer *)timer;
{
    [[WWManager sharedManager] removeEffect:[timer userInfo]];
}
@end
