# YKAutolayout - Make Masonry Easier!
A tool to use Masonry with Objective C Chain Syntax. 

## Introduction
YKAutolayout is an extension of Masonry.It offers the convinient API to do what Masonry do.

## Required

- Masonry (The latest version)

## Installtion

1. Download the Demo project.
2. Copy the Document named 'YKAutolayout' and paste it to your own project.
3. #import "UIView+YKAutolayout.h"
4. Then have fun.

## Usage
The usage is similiar to Masonry. Here are the examples.
Masonry:
```
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(0);
    }];
    [viewA mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(310);
    }];
    [viewB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(viewA.mas_bottom).offset(50);
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(300);
    }];
    [viewC mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(viewB.mas_bottom).offset(51);
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(viewB).multipliedBy(0.5);
        make.height.mas_equalTo(viewC).multipliedBy(2.0);
    }];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(viewC.mas_bottom).offset(12);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(50);
        make.centerX.mas_equalTo(scrollView);
    }];
```

YKAutolayout:
```
    scrollView.yk_make.top(0).left(0);
    scrollView.yk_make.right(0).bottom(0).done();

    viewA.yk_make.top(33).left(10).width(310).height(310).done();

    viewB.yk_make.topTo(viewA.mas_bottom,50).left(10).width(300).height(300).done();

    viewC.yk_make.topTo(viewB.mas_bottom,51).left(10).widthAspectTo(viewB,0.5).heightAspectTo(viewC.mas_width,2.0)
            .done();

    btn1.yk_make.topTo(viewC.mas_bottom,12).width(100).height(50).centerXTo(scrollView,0).done();
```
Note: When all constraints added , please call done() to layout.

## Future

- Add priority support.
- Make API more laconic.
