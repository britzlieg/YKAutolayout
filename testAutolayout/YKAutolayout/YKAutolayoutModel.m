//
//  YKAutolayoutModel.m
//  testAutolayout
//
//  Created by ZhijieLi on 9/2/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import "YKAutolayoutModel.h"
#import "Masonry.h"

#define YKWeakObj(o) autoreleasepool{} __weak typeof(o) o##Weak = o
#define YKStrongObj(o) autoreleasepool{} __strong typeof(o) o = o##Weak

@interface YKAutolayoutModel()

@property(nonatomic, weak) UIView *selfView;

@property(nonatomic, assign) CGFloat topMarginValue;

@property(nonatomic, assign) CGFloat leftMarginValue;

@property(nonatomic, assign) CGFloat rightMarginValue;

@property(nonatomic, assign) CGFloat bottomMarginValue;

@property(nonatomic, assign) CGFloat widthValue;

@property(nonatomic, assign) CGFloat heightValue;

@property(nonatomic, assign) CGFloat widthMoreValue;

@property(nonatomic, assign) CGFloat heightMoreValue;

@property(nonatomic, assign) CGFloat widthLessValue;

@property(nonatomic, assign) CGFloat heightLessValue;

@property(nonatomic, assign) CGFloat widthAspectValue;

@property(nonatomic, assign) CGFloat heightAspectValue;

@property(nonatomic, assign) CGFloat centerXValue;

@property(nonatomic, assign) CGFloat centerYValue;

// aspect
@property(strong, nonatomic) MASViewAttribute *yk_widthAspectReference;

@property(strong, nonatomic) MASViewAttribute *yk_heightAspectReference;

// equal
@property(strong, nonatomic) MASViewAttribute *yk_topReferecen;

@property(strong, nonatomic) MASViewAttribute *yk_bottomReference;

@property(strong, nonatomic) MASViewAttribute *yk_leftReference;

@property(strong, nonatomic) MASViewAttribute *yk_rightReference;

@property(strong, nonatomic) MASViewAttribute *yk_widthReference;

@property(strong, nonatomic) MASViewAttribute *yk_heightReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerXReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerYReference;

// greater
@property(strong, nonatomic) MASViewAttribute *yk_topMoreReferecen;

@property(strong, nonatomic) MASViewAttribute *yk_bottomMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_leftMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_rightMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_widthMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_heightMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerXMoreReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerYMoreReference;

// less
@property(strong, nonatomic) MASViewAttribute *yk_topLessReferecen;

@property(strong, nonatomic) MASViewAttribute *yk_bottomLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_leftLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_rightLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_widthLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_heightLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerXLessReference;

@property(strong, nonatomic) MASViewAttribute *yk_centerYLessReference;


@end


@implementation YKAutolayoutModel

#pragma mark - Assert
- (void)assert {
    NSAssert(self.selfView,@"Self View should not be nil");
    NSAssert(self.selfView.superview,@"SuperView should not be nil");
}

#pragma mark - Public

- (YKAutolayoutTop)top {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_top_e"];
        return self;
    };
}

- (YKAutolayoutBottom)bottom {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_bottom_e"];
        return self;
    };
}

- (YKAutolayoutLeft)left {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_left_e"];
        return self;
    };
}

- (YKAutolayoutRight)right {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_right_e"];
        return self;
    };
}

- (YKAutolayoutWidth)width {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_width_value_e"];
        return self;
    };
}

- (YKAutolayoutHeight)height {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_height_value_e"];
        return self;
    };
}

- (YKAutolayoutWidth)widthMore {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_width_value_m"];
        return self;
    };
}

- (YKAutolayoutHeight)heightMore {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_height_value_m"];
        return self;
    };
}

- (YKAutolayoutWidth)widthLess {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_width_value_l"];
        return self;
    };
}

- (YKAutolayoutHeight)heightLess {
    [self assert];
    @YKWeakObj(self);
    return ^(CGFloat value) {
        @YKStrongObj(self);
        [self reference:[_selfView superview] value:value type:@"mas_height_value_l"];
        return self;
    };
}

- (YKAutolayoutReference)widthAspectTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_width_aspect"];
        return self;
    };
}

- (YKAutolayoutReference)heightAspectTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_height_aspect"];
        return self;
    };
}

- (instancetype)initWithView: (UIView *)view {
    self = [super init];
    if (self) {
        self.selfView = view;
    }
    return self;
}

#pragma mark - Equal
- (YKAutolayoutReference)topTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_top_e"];
        return self;
    };
}

- (YKAutolayoutReference)rightTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_right_e"];
        return self;
    };
}

- (YKAutolayoutReference)leftTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_left_e"];
        return self;
    };
}

- (YKAutolayoutReference)bottomTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_bottom_e"];
        return self;
    };
}
- (YKAutolayoutReference)widthTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_width_e"];
        return self;
    };
}

- (YKAutolayoutReference)heightTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_height_e"];
        return self;
    };
}

- (YKAutolayoutReference)centerXTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerX_e"];
        return self;
    };
}

- (YKAutolayoutReference)centerYTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerY_e"];
        return self;
    };
}

#pragma mark - Greater
- (YKAutolayoutReference)topMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_top_m"];
        return self;
    };
}

- (YKAutolayoutReference)rightMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_right_m"];
        return self;
    };
}

- (YKAutolayoutReference)leftMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_left_m"];
        return self;
    };
}

- (YKAutolayoutReference)bottomMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_bottom_m"];
        return self;
    };
}
- (YKAutolayoutReference)widthMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_width_m"];
        return self;
    };
}

- (YKAutolayoutReference)heightMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_height_m"];
        return self;
    };
}

- (YKAutolayoutReference)centerXMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerX_m"];
        return self;
    };
}

- (YKAutolayoutReference)centerYMoreTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerY_m"];
        return self;
    };
}

#pragma mark - Less
- (YKAutolayoutReference)topLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_top_l"];
        return self;
    };
}

- (YKAutolayoutReference)rightLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_right_l"];
        return self;
    };
}

- (YKAutolayoutReference)leftLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_left_l"];
        return self;
    };
}

- (YKAutolayoutReference)bottomLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_bottom_l"];
        return self;
    };
}
- (YKAutolayoutReference)widthLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_width_l"];
        return self;
    };
}

- (YKAutolayoutReference)heightLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_height_l"];
        return self;
    };
}

- (YKAutolayoutReference)centerXLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerX_l"];
        return self;
    };
}

- (YKAutolayoutReference)centerYLessTo {
    [self assert];
    @YKWeakObj(self);
    return ^(id reference, CGFloat value){
        @YKStrongObj(self);
        [self reference:reference value:value type:@"mas_centerY_l"];
        return self;
    };
}


- (void)reference: (id)reference value: (CGFloat)value type: (NSString *)type{
    if ([reference isKindOfClass:[UIView class]]) {
        UIView *view = (UIView *)reference;
        // equalt
        if ([type isEqualToString:@"mas_top_e"]) {
            self.yk_topReferecen = view.mas_top;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_e"]) {
            self.yk_leftReference = view.mas_left;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_e"]) {
            self.yk_rightReference = view.mas_right;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_e"]) {
            self.yk_bottomReference = view.mas_bottom;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_e"]) {
            self.yk_widthReference = view.mas_width;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_e"]) {
            self.yk_heightReference = view.mas_height;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_e"]) {
            self.yk_centerXReference = view.mas_centerX;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_e"]) {
            self.yk_centerYReference = view.mas_centerY;
            self.centerYValue = value;
        }
            // greater
        else if ([type isEqualToString:@"mas_top_m"]) {
            self.yk_topMoreReferecen = view.mas_top;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_m"]) {
            self.yk_leftMoreReference = view.mas_left;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_m"]) {
            self.yk_rightMoreReference = view.mas_right;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_m"]) {
            self.yk_bottomMoreReference = view.mas_bottom;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_m"]) {
            self.yk_widthMoreReference = view.mas_width;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_m"]) {
            self.yk_heightMoreReference = view.mas_height;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_m"]) {
            self.yk_centerXMoreReference = view.mas_centerX;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_m"]) {
            self.yk_centerYMoreReference = view.mas_centerY;
            self.centerYValue = value;
        }
            // less
        else if ([type isEqualToString:@"mas_top_l"]) {
            self.yk_topLessReferecen = view.mas_top;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_l"]) {
            self.yk_leftLessReference = view.mas_left;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_l"]) {
            self.yk_rightLessReference = view.mas_right;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_l"]) {
            self.yk_bottomLessReference = view.mas_bottom;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_l"]) {
            self.yk_widthLessReference = view.mas_width;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_l"]) {
            self.yk_heightLessReference = view.mas_height;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_l"]) {
            self.yk_centerXLessReference = view.mas_centerX;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_l"]) {
            self.yk_centerYLessReference = view.mas_centerY;
            self.centerYValue = value;
        }
        // value
        else if ([type isEqualToString:@"mas_width_value_e"]) {
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_width_value_m"]) {
            self.widthMoreValue = value;
        }
        else if ([type isEqualToString:@"mas_width_value_l"]) {
            self.widthLessValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_e"]) {
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_m"]) {
            self.heightMoreValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_l"]) {
            self.heightLessValue = value;
        }
        else if ([type isEqualToString:@"mas_width_aspect"]) {
            self.widthAspectValue = value;
            self.yk_widthAspectReference = view.mas_width;
        }
        else if ([type isEqualToString:@"mas_height_aspect"]) {
            self.heightAspectValue = value;
            self.yk_heightAspectReference = view.mas_height;
        }
    }
    else if ([reference isKindOfClass:[MASViewAttribute class]]) {
        if ([type isEqualToString:@"mas_top_e"]) {
            self.yk_topReferecen = reference;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_e"]) {
            self.yk_leftReference = reference;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_e"]) {
            self.yk_rightReference = reference;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_e"]) {
            self.yk_bottomReference = reference;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_e"]) {
            self.yk_widthReference = reference;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_e"]) {
            self.yk_heightReference = reference;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_e"]) {
            self.yk_centerXReference = reference;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_e"]) {
            self.yk_centerYReference = reference;
            self.centerYValue = value;
        }
            // greater
        else if ([type isEqualToString:@"mas_top_m"]) {
            self.yk_topMoreReferecen = reference;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_m"]) {
            self.yk_leftMoreReference = reference;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_m"]) {
            self.yk_rightMoreReference = reference;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_m"]) {
            self.yk_bottomMoreReference = reference;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_m"]) {
            self.yk_widthMoreReference = reference;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_m"]) {
            self.yk_heightMoreReference = reference;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_m"]) {
            self.yk_centerXMoreReference = reference;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_m"]) {
            self.yk_centerYMoreReference = reference;
            self.centerYValue = value;
        }
            // less
        else if ([type isEqualToString:@"mas_top_l"]) {
            self.yk_topLessReferecen = reference;
            self.topMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_left_l"]) {
            self.yk_leftLessReference = reference;
            self.leftMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_right_l"]) {
            self.yk_rightLessReference = reference;
            self.rightMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_bottom_l"]) {
            self.yk_bottomLessReference = reference;
            self.bottomMarginValue = value;
        }
        else if ([type isEqualToString:@"mas_width_l"]) {
            self.yk_widthLessReference = reference;
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_height_l"]) {
            self.yk_heightLessReference = reference;
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_centerX_l"]) {
            self.yk_centerXLessReference = reference;
            self.centerXValue = value;
        }
        else if ([type isEqualToString:@"mas_centerY_l"]) {
            self.yk_centerYLessReference = reference;
            self.centerYValue = value;
        }
        // value
        else if ([type isEqualToString:@"mas_width_value_e"]) {
            self.widthValue = value;
        }
        else if ([type isEqualToString:@"mas_width_value_m"]) {
            self.widthMoreValue = value;
        }
        else if ([type isEqualToString:@"mas_width_value_l"]) {
            self.widthLessValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_e"]) {
            self.heightValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_m"]) {
            self.heightMoreValue = value;
        }
        else if ([type isEqualToString:@"mas_height_value_l"]) {
            self.heightLessValue = value;
        }
        else if ([type isEqualToString:@"mas_width_aspect"]) {
            self.widthAspectValue = value;
            self.yk_widthAspectReference = reference;
        }
        else if ([type isEqualToString:@"mas_height_aspect"]) {
            self.heightAspectValue = value;
            self.yk_heightAspectReference = reference;
        }
    }
}

#pragma mark - Top
- (void)topMaker: (MASConstraintMaker *)make {
    if (self.yk_topReferecen) {
        make.top.mas_equalTo(self.yk_topReferecen).offset(self.topMarginValue);
    }
    else if (self.yk_topMoreReferecen) {
        make.top.mas_greaterThanOrEqualTo(self.yk_topMoreReferecen).offset(self.topMarginValue);
    }
    else if (self.yk_topLessReferecen) {
        make.top.mas_lessThanOrEqualTo(self.yk_topLessReferecen).offset(self.topMarginValue);
    }
}

#pragma mark - Bottom
- (void)bottomMaker: (MASConstraintMaker *)make {
    if (self.yk_bottomReference) {
        make.bottom.mas_equalTo(self.yk_bottomReference).offset(self.bottomMarginValue);
    }
    else if (self.yk_bottomMoreReference) {
        make.bottom.mas_greaterThanOrEqualTo(self.yk_bottomMoreReference).offset(self.bottomMarginValue);
    }
    else if (self.yk_bottomLessReference) {
        make.bottom.mas_lessThanOrEqualTo(self.yk_bottomLessReference).offset(self.bottomMarginValue);
    }
}

#pragma mark - Left
- (void)leftMaker: (MASConstraintMaker *)make {
    if (self.yk_leftReference) {
        make.left.mas_equalTo(self.yk_leftReference).offset(self.leftMarginValue);
    }
    else if (self.yk_leftMoreReference) {
        make.left.mas_greaterThanOrEqualTo(self.yk_leftMoreReference).offset(self.leftMarginValue);
    }
    else if (self.yk_leftLessReference) {
        make.left.mas_lessThanOrEqualTo(self.yk_leftLessReference).offset(self.leftMarginValue);
    }
}

#pragma mark - Right
- (void)rightMaker: (MASConstraintMaker *)make {
    if (self.yk_rightReference) {
        make.right.mas_equalTo(self.yk_rightReference).offset(self.rightMarginValue);
    }
    else if (self.yk_rightMoreReference) {
        make.right.mas_greaterThanOrEqualTo(self.yk_rightMoreReference).offset(self.rightMarginValue);
    }
    else if (self.yk_rightLessReference) {
        make.right.mas_lessThanOrEqualTo(self.yk_rightLessReference).offset(self.rightMarginValue);
    }
}

#pragma mark - Width
- (void)widthMaker: (MASConstraintMaker *)make {
    if (self.yk_widthReference) {
        make.width.mas_equalTo(self.yk_widthReference).offset(self.widthValue);
    }
    else if (self.yk_widthMoreReference) {
        make.width.mas_greaterThanOrEqualTo(self.yk_widthMoreReference).offset(self.widthValue);
    }
    else if (self.yk_widthLessReference) {
        make.width.mas_lessThanOrEqualTo(self.yk_widthLessReference).offset(self.widthValue);
    }
    else if (self.yk_widthAspectReference) {
        make.width.mas_equalTo(self.yk_widthAspectReference).multipliedBy(self.widthAspectValue);
    }
    else {
        // value
        if (self.widthMoreValue > 0) {
            make.width.mas_greaterThanOrEqualTo(self.widthMoreValue);
        }
        if (self.widthLessValue > 0) {
            make.width.mas_lessThanOrEqualTo(self.widthLessValue);
        }
        if (self.widthValue > 0) {
            make.width.mas_equalTo(self.widthValue);
        }
    }
}

#pragma mark - Height
- (void)heightMaker: (MASConstraintMaker *)make {
    if (self.yk_heightReference) {
        make.height.mas_equalTo(self.yk_heightReference).offset(self.heightValue);
    }
    else if (self.yk_heightMoreReference) {
        make.height.mas_greaterThanOrEqualTo(self.yk_heightMoreReference).offset(self.heightValue);
    }
    else if (self.yk_heightLessReference) {
        make.height.mas_lessThanOrEqualTo(self.yk_heightLessReference).offset(self.heightValue);
    }
    else if (self.yk_heightAspectReference) {
        make.height.mas_equalTo(self.yk_heightAspectReference).multipliedBy(self.heightAspectValue);
    }
    else {
        // value
        if (self.heightMoreValue > 0) {
            make.height.mas_greaterThanOrEqualTo(self.heightMoreValue);
        }
        if (self.heightLessValue > 0) {
            make.height.mas_lessThanOrEqualTo(self.heightLessValue);
        }
        if (self.heightValue > 0) {
            make.height.mas_equalTo(self.heightValue);
        }
    }
}

#pragma mark - CenterX
- (void)centerXMaker: (MASConstraintMaker *)make {
    if (self.yk_centerXReference) {
        make.centerX.mas_equalTo(self.yk_centerXReference).offset(self.centerXValue);
    }
    else if (self.yk_centerXMoreReference) {
        make.centerX.mas_greaterThanOrEqualTo(self.yk_centerXMoreReference).offset(self.centerXValue);
    }
    else if (self.yk_centerXLessReference) {
        make.centerX.mas_lessThanOrEqualTo(self.yk_centerXLessReference).offset(self.centerXValue);
    }
}

#pragma mark - CenterY
- (void)centerYMaker: (MASConstraintMaker *)make {
    if (self.yk_centerYReference) {
        make.centerY.mas_equalTo(self.yk_centerYReference).offset(self.centerYValue);
    }
    else if (self.yk_centerYMoreReference) {
        make.centerY.mas_greaterThanOrEqualTo(self.yk_centerYMoreReference).offset(self.centerYValue);
    }
    else if (self.yk_centerYLessReference) {
        make.centerY.mas_lessThanOrEqualTo(self.yk_centerYLessReference).offset(self.centerYValue);
    }
}


#pragma mark - Done
- (YKAutolayoutDone)done {
    [self assert];
    @YKWeakObj(self);
    return ^() {
        if (self.setupType == YKAutolayoutMakeType) {
            [self.selfView mas_makeConstraints:^(MASConstraintMaker *make) {
                @YKStrongObj(self);
                [self topMaker:make];
                [self leftMaker:make];
                [self rightMaker:make];
                [self bottomMaker:make];
                [self widthMaker:make];
                [self heightMaker:make];
                [self centerXMaker:make];
                [self centerYMaker:make];
            }];
        }
        else if (self.setupType == YKAutolayoutUpdateType) {
            [self.selfView mas_updateConstraints:^(MASConstraintMaker *make) {
                @YKStrongObj(self);
                [self topMaker:make];
                [self leftMaker:make];
                [self rightMaker:make];
                [self bottomMaker:make];
                [self widthMaker:make];
                [self heightMaker:make];
                [self centerXMaker:make];
                [self centerYMaker:make];
            }];
        }
        else if (self.setupType == YKAutolayoutReMakeType) {
            [self.selfView mas_remakeConstraints:^(MASConstraintMaker *make) {
                @YKStrongObj(self);
                [self topMaker:make];
                [self leftMaker:make];
                [self rightMaker:make];
                [self bottomMaker:make];
                [self widthMaker:make];
                [self heightMaker:make];
                [self centerXMaker:make];
                [self centerYMaker:make];
            }];
        }
        [self clearAllProperties]; // 清除状态
        return self;
    };
}

#pragma mark - Private
- (void)clearAllProperties {

    _topMarginValue = 0;

    _leftMarginValue = 0;

    _rightMarginValue = 0;

    _bottomMarginValue = 0;

    _widthValue = 0;

   _heightValue = 0;

    _widthMoreValue = 0;

    _widthLessValue = 0;

    _heightMoreValue = 0;

    _heightLessValue = 0;

   _centerXValue = 0;

   _centerYValue = 0;

   _yk_topReferecen = nil;

   _yk_bottomReference = nil;

   _yk_leftReference = nil;

   _yk_rightReference = nil;

   _yk_widthReference = nil;

   _yk_heightReference = nil;

   _yk_centerXReference = nil;

   _yk_centerYReference = nil;

   _yk_topMoreReferecen = nil;

   _yk_bottomMoreReference = nil;

   _yk_leftMoreReference = nil;

   _yk_rightMoreReference = nil;

   _yk_widthMoreReference = nil;

   _yk_heightMoreReference = nil;

   _yk_centerXMoreReference = nil;

   _yk_centerYMoreReference = nil;

   _yk_topLessReferecen = nil;

   _yk_bottomLessReference = nil;

   _yk_leftLessReference = nil;

   _yk_rightLessReference = nil;

   _yk_widthLessReference = nil;

   _yk_heightLessReference = nil;

   _yk_centerXLessReference = nil;

   _yk_centerYLessReference = nil;
}

@end
