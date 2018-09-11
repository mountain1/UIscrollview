//
//  ViewController.m
//  ScrollView
//
//  Created by mtsapple on 2018/7/4.
//  Copyright © 2018年 mtsapple. All rights reserved.
//

#import "ViewController.h"
#import "PageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PageView * page = [PageView pageView];
    page.frame = CGRectMake(50, 80, 300, 150);
    [self.view addSubview:page];
    
}




@end
