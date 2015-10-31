//
//  UIColor+Builder.h
//  Being
//
//  Created by xiaofeng on 15/10/15.
//  Copyright © 2015年 Being Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Builder)

/**
 * create UIColor using hex code like [UIColor colorWithHColor:0xf4f4f4] with default alpha 0xFF or [UIColor colorWithHColor:0x55f4f4f4] with alpha 0x55
 */
+ (UIColor *)colorWithHColor:(NSUInteger)hexColor;

/**
 *  Creater UIColor
 *
 *  @param hexString eg: #125688 or 125688
 *
 *  @return color
 */
+ (UIColor *)colorFromHexString:(NSString *)hexString;

+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha;


@end
