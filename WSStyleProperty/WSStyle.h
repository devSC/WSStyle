//
//  WSStyle.h
//  WSStyleProperty
//
//  Created by Wilson-Yuan on 15/10/31.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSStyle : NSObject

//the color name must be: name_colorHexString
@property (strong, readonly, nonatomic) UIColor *blueColor_06141e;
@property (strong, readonly, nonatomic) UIColor *blueColor_0a3759;
@property (strong, readonly, nonatomic) UIColor *blueColor_651786;
@property (strong, readonly, nonatomic) UIColor *blueColor_9bb1c8;
@property (strong, readonly, nonatomic) UIColor *color_ef4206;


//Font name must be: font_fontsize
//               or: font_style_fontsize
@property (strong, readonly, nonatomic) UIFont *font_18;
@property (strong, readonly, nonatomic) UIFont *font_bold_18;
@property (strong, readonly, nonatomic) UIFont *font_16;

//Custome font
//for custom font, the name must be: font_fontName_fontsize
//                               or: font_fontName_style_fontsize
@property (strong, readonly, nonatomic) UIFont *font_Menlo_12;
@property (strong, readonly, nonatomic) UIFont *font_Avenir_light_12;

+ (WSStyle *)style;

//Not supported
@property (strong, nonatomic) NSString *title;
@property (strong, readonly, nonatomic) UIColor *bl9bb1c8;

@end
