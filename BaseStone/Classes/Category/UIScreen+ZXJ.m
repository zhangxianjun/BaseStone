//
//  UIScreen+ZXJ.m
//  Pods
//
//  Created by ZXJ on 2017/5/7.
//
//

#import "UIScreen+ZXJ.h"

@implementation UIScreen (ZXJ)

+ (CGFloat)zxj_getWidth {
    return UIScreen.mainScreen.bounds.size.width;
}

+ (CGFloat)zxj_getHeight {
    return UIScreen.mainScreen.bounds.size.height;
}

@end
