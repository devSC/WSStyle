//
//  WSStyle.m
//  WSStyleProperty
//
//  Created by Wilson-Yuan on 15/10/31.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "WSStyle.h"
#import "UIColor+Builder.h"
#import <objc/runtime.h>

@implementation WSStyle

+ (WSStyle *)style
{
    static dispatch_once_t onceToken;
    static WSStyle *style;
    dispatch_once(&onceToken, ^{
        style = [[WSStyle alloc] init];
    });
    return style;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self _initial];
    }
    return self;
}

- (void)_initial {
    
    unsigned int propertyCount = 0;
    objc_property_t *propertys = class_copyPropertyList([self class], &propertyCount);
    
    for (int i = 0; i < propertyCount; i ++) {
        
        objc_property_t property = propertys[i];
        const char *propertyName = property_getName(property);
        NSString *propertyNameString = [NSString stringWithUTF8String:propertyName];
        
        //类
        Class class;
        id value;
        
        //获得属性数组
        unsigned int attribuatedCount = 0;
        objc_property_attribute_t *attribuates = property_copyAttributeList(property, &attribuatedCount);
        for (int j = 0; j < attribuatedCount; j ++) {
            objc_property_attribute_t attribuate = attribuates[j];
            
            NSString *attribuateNameString = [NSString stringWithUTF8String:attribuate.name];
            NSString *attribuateValueString = [NSString stringWithUTF8String:attribuate.value];
//            NSLog(@"name: %s value: %s", attribuate.name, attribuate.value);

            if ([attribuateNameString isEqualToString:@"T"]) {
                
                NSString *classString = [attribuateValueString substringWithRange:NSMakeRange(2, attribuateValueString.length - 3)];
                class = NSClassFromString(classString);
            }
            else if ([attribuateNameString isEqualToString:@"V"]) { //所声明的属性名字
                
                //这里判断是什么类型 color 或者还是font等、
                //This is color
                if (class == [UIColor class]) {
                    value = [self colorWithAttribuateString:attribuateValueString];
                }
                else if (class == [UIFont class]) {
                    value = [self fontWithAttribuateString:attribuateValueString];
                }
                else {
                    NSLog(@"#WARNING----- This property dont supported auto get value:%@",propertyNameString);
                }
                
            }
        }
        
        
        const char *propertyAttribuated = property_getAttributes(property);
        NSString *propertyAttribuatedString = [NSString stringWithUTF8String:propertyAttribuated];
        NSLog(@"%@, %@", propertyNameString, propertyAttribuatedString);
        
        //赋值
        [self setValue:value forKey:propertyNameString];
    }
}


- (UIColor *)colorWithAttribuateString:(NSString *)attribuateString {
    NSArray *strings = [attribuateString componentsSeparatedByString:@"_"];
    return [UIColor colorFromHexString:strings.lastObject];
}


- (UIFont *)fontWithAttribuateString:(NSString *)attribuateString {
    
    NSArray *strings = [attribuateString componentsSeparatedByString:@"_"];
    NSUInteger fontSize = [strings.lastObject integerValue];
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    
    if (strings.count == 3) {
        font = [UIFont systemFontOfSize:fontSize];
    }
    else if (strings.count == 4 && [[strings[2] lowercaseString] isEqualToString:@"bold"]) { //maybe is the bold font
        font =  [UIFont boldSystemFontOfSize:fontSize];
    }
    else if (strings.count == 5){
        //IS Custome Bold
        font = [UIFont fontWithName:[NSString stringWithFormat:@"%@ %@", strings[2], strings[3]] size:fontSize];
    }
    else {
        NSLog(@"#WARNING-----font not supported : %@", attribuateString);
    }
    return font;
}

@end

@interface UIColor (HexColor)

+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

@implementation UIColor (HexColor)

+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha
{
    unsigned rgbValue = 0;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
}


@end
