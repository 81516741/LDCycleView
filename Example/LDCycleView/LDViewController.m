//
//  LDViewController.m
//  LDCycleView
//
//  Created by 81516741@qq.com on 02/04/2018.
//  Copyright (c) 2018 81516741@qq.com. All rights reserved.
//

#import "LDViewController.h"

#import "HRCycleView.h"

@interface LDViewController ()

@end

@implementation LDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray * colors = @[[UIColor redColor],[UIColor greenColor],[UIColor blackColor]];
    HRCycleView * view = [HRCycleView cycleView:2];
    view.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 150);
    view.itemCount = ^(){
        return (NSInteger)3;
    };
    view.fetchItem = ^(NSInteger index,UIView * customView){
        if (customView == nil) {
            customView = [[UIView alloc]init];
        }
        customView.backgroundColor = colors[index];
        NSLog(@"%p",customView);
        return customView;
    };
    view.showIndicator = ^{
        return YES;
    };
    [self.view addSubview:view];
}
@end
