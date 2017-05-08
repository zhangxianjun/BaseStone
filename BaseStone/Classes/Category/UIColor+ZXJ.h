//
//  UIColor+ZXJ.h
//  Pods
//
//  Created by ZXJ on 2017/5/7.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (ZXJ)

/**
 输入16进制色值，返回颜色对象

 @param value 16进制色值字符串
 @return 颜色对象
 */
+ (UIColor *)zxj_colorWithHexString:(NSString *)value;


/**
 输入16进制色值，透明度，返回颜色对象

 @param value 16进制色值
 @param alpha 透明度
 @return 颜色对象
 */
+ (UIColor *)zxj_colorWithHexString:(NSString *)value alpha:(float)alpha;
@end
