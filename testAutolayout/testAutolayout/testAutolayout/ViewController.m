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
#import "YKAutoScrollView.h"

@interface ViewController ()
{
    UIView *viewA;
    UIView *viewB;
    UIView *viewC;
    UIButton *btn1;
    UIView *viewD;
    YKAutoScrollView *scrollView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//
//    viewA = [UIView new];
//    viewB = [UIView new];
//    viewC = [UIView new];
//    viewD = [UIView new];
//    btn1 = [UIButton new];
//
//
//    viewA.backgroundColor = [UIColor redColor];
//    viewB.backgroundColor = [UIColor yellowColor];
//    viewC.backgroundColor = [UIColor blueColor];
//    [btn1 setTitle:@"TestBtn1" forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(updateBtn1) forControlEvents:UIControlEventTouchUpInside];
//    viewD.backgroundColor = [UIColor brownColor];
//
//    [self.view addSubview:viewA];
//    [self.view addSubview:viewB];
//    [self.view addSubview:viewC];
//    [self.view addSubview:btn1];
//    [self.view addSubview:viewD];
//
//    viewA.yk_make.top(10).left(20).width(100).height(100).done();
//    viewB.yk_make.topTo(viewA,10).leftTo(viewA.mas_right,0).widthMoreTo(viewA,100).heightTo(viewA,0).done();
//    viewC.yk_make.topTo(viewA.mas_bottom,20).leftTo(viewA.mas_left,0).height(100).widthLess(100).widthMore(50).done();
//    btn1.yk_make.centerXTo(self.view,100).top(300).height(30).widthTo(viewB,0).done();
//
//    viewD.yk_make.top(250).left(100).right(-100).heightAspectTo(viewD.mas_width,0.2).done();

    //--------------------------------------------------------------------------------------------------

    viewA = [UIView new];
    viewB = [UIView new];
    viewC = [UIView new];
    btn1 = [UIButton new];

    scrollView = [[YKAutoScrollView alloc] init];
    [self.view addSubview:scrollView];
    scrollView.yk_make.top(0).left(0).right(0).bottom(0).done();

    scrollView.views = @[viewA,viewB,viewC,btn1];

    viewA.yk_make.top(33).left(10).width(310).height(310).done();
    viewA.backgroundColor = [UIColor redColor];

    viewB.yk_make.topTo(viewA.mas_bottom,50).left(10).width(300).height(300).done();
    viewB.backgroundColor = [UIColor yellowColor];

    viewC.yk_make.topTo(viewB.mas_bottom,51).left(10).widthAspectTo(viewB,0.5).heightAspectTo(viewC.mas_width,2.0)
            .done();
    viewC.backgroundColor = [UIColor blackColor];

    btn1.yk_make.topTo(viewC.mas_bottom,12).width(100).height(50).centerXTo(scrollView,0).done();
    [btn1 setTitle:@"TestBtn1" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(updateBtn1) forControlEvents:UIControlEventTouchUpInside];
    [scrollView reloadViews];

}

- (void)updateBtn1 {
    viewB.hidden = YES;
    viewC.yk_update.topTo(viewA.mas_bottom,11).width(100).done();
//    [viewC mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(viewA.mas_bottom).offset(11);
//        make.width.mas_equalTo(100);
//    }];
    [UIView animateWithDuration:0.5 animations:^{
        [scrollView reloadViews];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
