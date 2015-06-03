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
    
    WWMove* move = [WWMove create:CGPointMake(0, 0) time:4];
    WWAlphaEffect* alpha = [WWAlphaEffect create:0.5 time:4];
     WWEaseIn *easeIn = [WWEaseIn create:move];
//     WWEaseIn *easeIn2 = [WWEaseIn create:spawn];
    WWSpwn* spawn = [WWSpwn createWithTowAction:easeIn effect2:alpha];
    
   

    [self.aView runAction:spawn];
}
@end
