//
//  YKAutoScrollView.h
//  testAutolayout
//
//  Created by ZhijieLi on 9/8/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YKAutoScrollView : UIScrollView

@property(strong, nonatomic) NSArray *views;

- (UIView *)latestNotHiddenView: (UIView *)referenceView;

- (void)reloadViews;

@end
