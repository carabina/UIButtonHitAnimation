//
//  ViewController.m
//  UIButtonHitAnimationDemo
//
//  Created by 张雷 on 16/11/25.
//  Copyright © 2016年 ImanZhang. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ScaleAnimation.h"

@interface ViewController (){
    BOOL change;
    BOOL bgChange;
    NSArray *colors;
    NSArray *bgColors;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *XLBlueColor = [UIColor colorWithRed:0.15 green:0.4 blue:0.7 alpha:1];
    colors = @[
               [UIColor brownColor],
               XLBlueColor,
               ];
    bgColors = @[
                 [UIColor darkGrayColor],
                 [UIColor colorWithRed:0.17 green:0.6 blue:0.36 alpha:1],
                 ];
    
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(0, 0, 300, 80);
    testBtn.center = CGPointMake(self.view.center.x, self.view.center.y-80);
    [testBtn setTitle:@"[更换按钮色]" forState:UIControlStateNormal];
    [self.view addSubview:testBtn];
    testBtn.backgroundColor = [UIColor brownColor];
    testBtn.layer.cornerRadius = 6;
    
    testBtn.showScaleAnimation = YES;   //  这句代码一定要放在 addTarget:前面
    [testBtn addTarget:self action:@selector(testBtnClicked:) forControlEvents:UIControlEventTouchUpInside];    // 带参数的方法
    
    UIButton *bgBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    bgBtn2.frame = CGRectMake(0, 0, 240, 60);
    bgBtn2.center = CGPointMake(self.view.center.x, self.view.center.y+80);
    [bgBtn2 setTitle:@"[更换背景色]" forState:UIControlStateNormal];
    [bgBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:bgBtn2];
    bgBtn2.backgroundColor = [UIColor lightGrayColor];
    bgBtn2.layer.cornerRadius = 6;
    
    bgBtn2.showScaleAnimation = YES;   //  这句代码一定要放在 addTarget:前面
    [bgBtn2 addTarget:self action:@selector(changeBGColor) forControlEvents:UIControlEventTouchUpInside];    // 不带参数的方法
}
    
- (void)changeBGColor{
    bgChange = !bgChange;
    self.view.backgroundColor = bgColors[bgChange];
}
    
- (void)testBtnClicked:(UIButton *)sender{
    change = !change;
    sender.backgroundColor = colors[change];
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
