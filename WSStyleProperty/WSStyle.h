//
//  WSStyle.h
//  WSStyleProperty
//
//  Created by Wilson-Yuan on 15/10/31.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSStyle : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, readonly, nonatomic) UIColor *blueColor_06141e;
@property (strong, readonly, nonatomic) UIColor *blueColor_0a3759;
@property (strong, readonly, nonatomic) UIColor *blueColor_651786;
@property (strong, readonly, nonatomic) UIColor *blueColor_9bb1c8;

@property (strong, readonly, nonatomic) UIFont *font_18;
@property (strong, readonly, nonatomic) UIFont *font_bold_18;
@property (strong, readonly, nonatomic) UIFont *font_16;
//自定义字体
@property (strong, readonly, nonatomic) UIFont *font_Avenir_light_12;

@end
