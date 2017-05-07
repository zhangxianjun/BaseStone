//
//  UIView+ZXJ.h
//  Pods
//
//  Created by ZXJ on 2017/5/7.
//
//

#import <UIKit/UIKit.h>

@interface UIView (ZXJ)

- (CGFloat)zxj_getX;
- (void)zxj_setX:(CGFloat)x;

- (CGFloat)zxj_getY;
- (void)zxj_setY:(CGFloat)y;


// 获取View的宽度
- (CGFloat)zxj_getWidth;
- (void)zxj_setWidth:(CGFloat)width;

// 获取View的高度
- (CGFloat)zxj_getHeight;
- (void)zxj_setHeight:(CGFloat)height;


@end
