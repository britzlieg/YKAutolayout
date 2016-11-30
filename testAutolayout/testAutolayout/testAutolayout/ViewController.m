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

    viewA = [UIView new];
    viewB = [UIView new];
    viewC = [UIView new];
    btn1 = [UIButton new];
    viewA.backgroundColor = [UIColor redColor];
    viewB.backgroundColor = [UIColor yellowColor];
    viewC.backgroundColor = [UIColor blackColor];
    scrollView = [[YKAutoScrollView alloc] init];

    [self.view addSubview:scrollView];
    scrollView.views = @[viewA,viewB,viewC,btn1];

    // Masonry

//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.right.bottom.mas_equalTo(0);
//    }];
//    [viewA mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(0);
//        make.left.mas_equalTo(10);
//        make.width.mas_equalTo(300);
//        make.height.mas_equalTo(310);
//    }];
//    [viewB mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(viewA.mas_bottom).offset(50);
//        make.left.mas_equalTo(10);
//        make.width.mas_equalTo(300);
//        make.height.mas_equalTo(300);
//    }];
//    [viewC mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(viewB.mas_bottom).offset(51);
//        make.left.mas_equalTo(10);
//        make.width.mas_equalTo(viewB).multipliedBy(0.5);
//        make.height.mas_equalTo(viewC).multipliedBy(2.0);
//    }];
//    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(viewC.mas_bottom).offset(12);
//        make.width.mas_equalTo(100);
//        make.height.mas_equalTo(50);
//        make.centerX.mas_equalTo(scrollView);
//    }];
//
//    // YKAutoLayout
//    scrollView.yk_make.top(0).left(0);
//    scrollView.yk_make.right(0).bottom(0).done();
//
//    viewA.yk_make.top(33).left(10).width(310).height(310).done();
//
//    viewB.yk_make.topTo(viewA.mas_bottom,50).left(10).width(300).height(300).done();
//
//    viewC.yk_make.topTo(viewB.mas_bottom,51).left(10).widthAspectTo(viewB,0.5).heightAspectTo(viewC.mas_width,2.0)
//            .done();
//
//    btn1.yk_make.topTo(viewC.mas_bottom,12).width(100).height(50).centerXTo(scrollView,0).done();

    // Massise
    scrollView.yk_make.top(0).left(0);
    scrollView.yk_make.right(0).bottom(0).done();
    viewA.yk_make.top(33).left(10).width(310).height(310).done();
    [viewB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(viewA.mas_bottom).offset(50);
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(300);
    }];
    viewC.yk_make.topTo(viewB.mas_bottom,51).left(10).widthAspectTo(viewB,0.5).heightAspectTo(viewC.mas_width,2.0) .done();
    btn1.yk_make.topTo(viewC.mas_bottom,12).width(100).height(50).centerXTo(scrollView,0).done();


    [btn1 setTitle:@"TestBtn1" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(updateBtn1) forControlEvents:UIControlEventTouchUpInside];
    [scrollView reloadViews];

}

- (void)updateBtn1 {
    viewB.hidden = YES;
    viewC.yk_remake.topTo(viewA.mas_bottom,11).widthAspectTo(viewA,0.5).left(10).heightAspectTo(viewC.mas_width,2.0).done();

    [UIView animateWithDuration:0.5 animations:^{
        [scrollView reloadViews];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
