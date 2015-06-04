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
#import "WWEaseIn.h"
#import "WWBezier.h"
#import "WWSpwn.h"
#import "WWSequential.h"
#import "WWEaseOut.h"
#import "WWeaseInOut.h"
#import "WWCallBack.h"
#import "WWQuadraticEaseIn.h"
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
    
 //   WWBezier* event = [WWBezier create:CGPointMake(200, 300) controlPoint:CGPointMake(0, 0) time:4];
    
    WWMove* move = [WWMove create:CGPointMake(200, 200) time:1];
//    WWeaseInOut *easeIn = [WWeaseInOut create:move];
//    WWEaseOut *easeOut =[WWEaseOut create:move];
    WWQuadraticEaseIn *quadraticEaseIn = [WWQuadraticEaseIn create:move];
    WWCallBack* callBack = [WWCallBack create:quadraticEaseIn callback:^{
       
        NSLog(@"ccccccc aaaa   llll   back");
    }];

    [self.aView runAction:callBack];
    
//    [UIView animateWithDuration:<#(NSTimeInterval)#> animations:<#^(void)animations#>]
    
    
 
    //[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopAnimation:) userInfo:move repeats:NO];
}


- (void)stopAnimation:(NSTimer *)timer;
{
    [[WWManager sharedManager] removeEffect:[timer userInfo]];
//    [self.aView stopAction];
}
@end
