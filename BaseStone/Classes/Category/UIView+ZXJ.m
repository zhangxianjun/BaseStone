//
//  UIView+ZXJ.m
//  Pods
//
//  Created by ZXJ on 2017/5/7.
//
//

#import "UIView+ZXJ.h"

@implementation UIView (ZXJ)

- (CGFloat)zxj_getX {
    return self.frame.origin.x;
}

- (void)zxj_setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)zxj_getY {
    return self.frame.origin.y;
}

- (void)zxj_setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)zxj_getWidth {
    return self.frame.size.width;
}

- (void)zxj_setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)zxj_getHeight {
    return self.frame.size.height;
}

- (void)zxj_setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

@end
