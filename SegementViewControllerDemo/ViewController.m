//
//  ViewController.m
//  SegementViewControllerDemo
//
//  Created by liaowentao on 17/3/9.
//  Copyright © 2017年 Haochuang. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleArray = @[@"你好吗",@"我很好",@"那就好",@"那不好",@"为什么",@"不知道"];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (NSString *titleStirng in self.titleArray) {
        TestViewController *vc = [[TestViewController alloc] init];
        vc.title = titleStirng;
        [array addObject:vc];
    }
    self.automaticallyAdjustsScrollViewInsets = YES;
//    self.edgesForExtendedLayout = UIRectEdgeNone;

    self.controllerArray = array;
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - 父类方法、切换tab
- (void)scrollViewSelectToIndex:(UIButton *)button
{
    [super scrollViewSelectToIndex:button];
}
//
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [super scrollViewDidScroll:scrollView];
}

- (void)selectButton:(NSInteger)index
{
    [super selectButton:index];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
