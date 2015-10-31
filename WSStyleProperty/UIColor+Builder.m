//
//  UIColor+Builder.m
//  Being
//
//  Created by xiaofeng on 15/10/15.
//  Copyright © 2015年 Being Inc. All rights reserved.
//

#import "UIColor+Builder.h"

@implementation UIColor (Builder)

+ (UIColor *)colorWithHColor:(NSUInteger)hexColor {
    NSUInteger alpha = (hexColor & 0xff000000) >> 24;
    if (alpha == 0) {
        alpha = 0xff;
    }
    
    NSUInteger red = (hexColor & 0x00ff0000) >> 16;
    NSUInteger green = (hexColor & 0x0000ff00) >> 8;
    NSUInteger blue = (hexColor & 0x000000ff);
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha/255.0];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString
{
    return [self colorFromHexString:hexString alpha:1];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha
{
    unsigned rgbValue = 0;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
}



@end
