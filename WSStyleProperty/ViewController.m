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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label1.backgroundColor = [WSStyle style].blueColor_06141e;
    self.label1.font = [WSStyle style].font_Avenir_light_12;
    self.label2.backgroundColor = [WSStyle style].blueColor_0a3759;
    self.label2.font = [WSStyle style].font_bold_18;
    self.label3.backgroundColor = [WSStyle style].blueColor_651786;
    self.label3.font = [WSStyle style].font_18;
    self.label4.backgroundColor = [WSStyle style].blueColor_9bb1c8;
    self.label4.font = [WSStyle style].font_16;
//    NSLog(@"title: %@", [WSStyle style].title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
