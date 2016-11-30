//
//  UIView+YKAutolayout.m
//  testAutolayout
//
//  Created by ZhijieLi on 9/2/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import "UIView+YKAutolayout.h"
#import "Masonry.h"
#import <objc/runtime.h>

static char *YKAutolayoutModelConstraintsKey;

@interface UIView()

@property(strong, nonatomic) YKAutolayoutModel *constraintsModel;

@end

@implementation UIView(YKAutolayout)

- (YKAutolayoutModel *)constraintsModel {
    return objc_getAssociatedObject(self, &YKAutolayoutModelConstraintsKey);
}

- (void)setConstraintsModel:(YKAutolayoutModel *)constraintsModel {
    objc_setAssociatedObject(self, &YKAutolayoutModelConstraintsKey, constraintsModel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (YKAutolayoutModel *)yk_make {
    if (!self.constraintsModel) {
        self.constraintsModel = [[YKAutolayoutModel alloc] initWithView:self];
    }
    self.constraintsModel.setupType = YKAutolayoutMakeType;
    return self.constraintsModel;
}

- (YKAutolayoutModel *)yk_update {
    if (!self.constraintsModel) {
        self.constraintsModel = [[YKAutolayoutModel alloc] initWithView:self];
    }
    self.constraintsModel.setupType = YKAutolayoutUpdateType;
    return self.constraintsModel;
}

- (YKAutolayoutModel *)yk_remake {
    if (!self.constraintsModel) {
        self.constraintsModel = [[YKAutolayoutModel alloc] initWithView:self];
    }
    self.constraintsModel.setupType = YKAutolayoutReMakeType;
    return self.constraintsModel;
}



@end
