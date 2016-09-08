//
//  YKAutoScrollView.m
//  testAutolayout
//
//  Created by ZhijieLi on 9/8/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import "YKAutoScrollView.h"
#import "UIView+YKAutolayout.h"

@interface YKAutoScrollView()

@end

@implementation YKAutoScrollView

#pragma mark - LifeCycle
- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.views.count > 0) {
        NSInteger viewsCount = self.views.count;
        UIView *view = self.views[viewsCount - 1];
        if (view.hidden) {
            view = [self latestNotHiddenView:self.views[viewsCount - 1]];
        }
        self.contentSize = CGSizeMake(0,view.frame.origin.y + view.frame.size.height);
    }

}

#pragma mark - Public
- (UIView *)latestNotHiddenView: (UIView *)referenceView {
    NSInteger r_index = self.views.count - 1;
    for (NSInteger i=r_index; i >= 0; i--) {
        UIView *view = self.views[i];
        if (view == referenceView) {
            r_index = i;
            break;
        }
    }
    UIView *notHiddenView;
    for (NSInteger j = r_index - 1; j >=0 ; j--) {
        UIView *view = self.views[j];
        if (!view.hidden) {
            notHiddenView = view;
            break;
        }
    }
    return notHiddenView;
}

- (void)reloadViews {
    [self setNeedsUpdateConstraints];
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

#pragma mark - Setter
- (void)setViews:(NSArray *)views {
    _views = views;
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
    for (int i = 0; i < _views.count; ++i) {
        [self addSubview:_views[i]];
    }
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

@end
