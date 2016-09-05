//
//  YKAutolayoutModel.h
//  testAutolayout
//
//  Created by ZhijieLi on 9/2/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YKAutolayoutSetupType) {
    YKAutolayoutMakeType = 0,
    YKAutolayoutUpdateType,
    YKAutolayoutReMakeType,
};

@class YKAutolayoutModel;
// SuperView
typedef YKAutolayoutModel *(^YKAutolayoutTop)(CGFloat value);
typedef YKAutolayoutModel *(^YKAutolayoutLeft)(CGFloat value);
typedef YKAutolayoutModel *(^YKAutolayoutRight)(CGFloat value);
typedef YKAutolayoutModel *(^YKAutolayoutBottom)(CGFloat value);
typedef YKAutolayoutModel *(^YKAutolayoutWidth)(CGFloat value);
typedef YKAutolayoutModel *(^YKAutolayoutHeight)(CGFloat value);

typedef YKAutolayoutModel *(^YKAutolayoutReference)(id reference,CGFloat value);

typedef YKAutolayoutModel *(^YKAutolayoutDone)();

@interface YKAutolayoutModel : NSObject

@property (assign, nonatomic) YKAutolayoutSetupType setupType;

- (YKAutolayoutTop)top;

- (YKAutolayoutBottom)bottom;

- (YKAutolayoutLeft)left;

- (YKAutolayoutRight)right;

- (YKAutolayoutWidth)width;

- (YKAutolayoutHeight)height;

- (YKAutolayoutWidth)widthMore;

- (YKAutolayoutHeight)heightMore;

- (YKAutolayoutWidth)widthLess;

- (YKAutolayoutHeight)heightLess;

- (YKAutolayoutReference)topTo;

- (YKAutolayoutReference)rightTo;

- (YKAutolayoutReference)leftTo;

- (YKAutolayoutReference)bottomTo;

- (YKAutolayoutReference)widthTo;

- (YKAutolayoutReference)heightTo;

- (YKAutolayoutReference)centerXTo;

- (YKAutolayoutReference)centerYTo;


- (YKAutolayoutReference)topMoreTo;

- (YKAutolayoutReference)rightMoreTo;

- (YKAutolayoutReference)leftMoreTo;

- (YKAutolayoutReference)bottomMoreTo;

- (YKAutolayoutReference)widthMoreTo;

- (YKAutolayoutReference)heightMoreTo;

- (YKAutolayoutReference)centerXMoreTo;

- (YKAutolayoutReference)centerYMoreTo;


- (YKAutolayoutReference)topLessTo;

- (YKAutolayoutReference)rightLessTo;

- (YKAutolayoutReference)leftLessTo;

- (YKAutolayoutReference)bottomLessTo;

- (YKAutolayoutReference)widthLessTo;

- (YKAutolayoutReference)heightLessTo;

- (YKAutolayoutReference)centerXLessTo;

- (YKAutolayoutReference)centerYLessTo;

- (instancetype)initWithView: (UIView *)view;

- (YKAutolayoutDone)done;

@end
