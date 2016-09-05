//
//  UIView+YKAutolayout.h
//  testAutolayout
//
//  Created by ZhijieLi on 9/2/16.
//  Copyright © 2016 Britzlieg. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "YKAutolayoutModel.h"

@interface UIView(YKAutolayout)

- (YKAutolayoutModel *)yk_make;

- (YKAutolayoutModel *)yk_update;

- (YKAutolayoutModel *)yk_remake;


@end
