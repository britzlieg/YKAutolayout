//
//  ViewController.m
//  testAutolayout
//
//  Created by ZhijieLi on 9/2/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "UIView+YKAutolayout.h"

@interface ViewController ()
{
    UIView *viewA;
    UIView *viewB;
    UIView *viewC;
    UIButton *btn1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    viewA = [UIView new];
    viewB = [UIView new];
    viewC = [UIView new];
    btn1 = [UIButton new];

    viewA.backgroundColor = [UIColor redColor];
    viewB.backgroundColor = [UIColor yellowColor];
    viewC.backgroundColor = [UIColor blueColor];
    [btn1 setTitle:@"TestBtn1" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(updateBtn1) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:viewA];
    [self.view addSubview:viewB];
    [self.view addSubview:viewC];
    [self.view addSubview:btn1];

    viewA.yk_make.top(10).left(20).width(100).height(100).done();
    viewB.yk_make.topTo(viewA,10).leftTo(viewA.mas_right,0).widthMoreTo(viewA,100).heightTo(viewA,0).done();
    viewC.yk_make.topTo(viewA.mas_bottom,20).leftTo(viewA.mas_left,0).height(100).widthLess(100).widthMore(50).done();
    btn1.yk_make.centerXTo(self.view,100).top(300).height(30).widthTo(viewB,0).done();
}

- (void)updateBtn1 {
    btn1.yk_update.centerXTo(self.view,-100).done();
    [UIView animateWithDuration:0.5 animations:^{

        [btn1 setNeedsUpdateConstraints];
        [btn1 setNeedsLayout];
        [btn1 layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
