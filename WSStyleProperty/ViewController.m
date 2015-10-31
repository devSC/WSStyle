//
//  ViewController.m
//  WSStyleProperty
//
//  Created by Wilson-Yuan on 15/10/31.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "ViewController.h"
#import "WSStyle.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label1.backgroundColor = [WSStyle style].blueColor_06141e;
    self.label1.font = [WSStyle style].font_Avenir_light_12;
    self.label1.text = [NSString stringWithFormat:@"color: blueColor_06141e, font: font_Avenir_light_12"];
    
    self.label2.backgroundColor = [WSStyle style].blueColor_0a3759;
    self.label2.font = [WSStyle style].font_bold_18;
    self.label2.text = [NSString stringWithFormat:@"color: blueColor_0a3759, font: font_bold_18"];

    
    self.label3.backgroundColor = [WSStyle style].blueColor_651786;
    self.label3.font = [WSStyle style].font_18;
    self.label3.text = [NSString stringWithFormat:@"color: blueColor_651786, font: font_18"];

    self.label4.backgroundColor = [WSStyle style].blueColor_9bb1c8;
    self.label4.font = [WSStyle style].font_16;
    self.label4.text = [NSString stringWithFormat:@"color: blueColor_9bb1c8, font: font_16"];

    self.label5.backgroundColor = [WSStyle style].color_ef4206;
    self.label5.font = [WSStyle style].font_Menlo_12;
    self.label5.text = [NSString stringWithFormat:@"color: color_ef4206, font: font_Menlo_12"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
