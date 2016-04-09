# AnimationDemo

项目的使用
    WWAlpha * alpha = [WWAlpha create:0.5 time:2];
    WWScale*  scale = [WWScale create:0.1 time:2];
    WWDelay *delay = [WWDelay create:1.];
    WWBezier* be = [WWBezier create:CGPointMake(0, 0) controlPoint:CGPointMake(100, 600) time:2];
    WWElasticEaseOut* ease = [WWElasticEaseOut create:be];
    WWRotation * ro = [WWRotation create:-2*M_PI time:2];
    NSArray* arr = [NSArray arrayWithObjects:alpha,ease,scale,ro, nil];
    WWSpwn * seq = [WWSpwn createWithTowActions:arr];
    WWSequential *se = [WWSequential createWithTowAction:delay effect2:seq];
    WWRepeat* repeat = [WWRepeat create:se times:30000];
    [self.aView runAction:repeat];
    
    
    更方便的实现 easing tween动画，你可以对 WWEffect进行扩展 实现更丰富的动画
