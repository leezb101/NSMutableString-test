//
//  ViewController.m
//  NSMutableString——test
//
//  Created by leezb101 on 16/8/30.
//  Copyright © 2016年 leezb101. All rights reserved.
//

#import "ViewController.h"
#import "MutableStrTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextView *textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:textView];
    NSString *testString1 = @"这是一个测试的字符串，专门用来测试富文本字符串的各种属性添加。属性的添加取决于实际的需求，如颜色属性，字体属性，间距属性等等。。。";
    textView.attributedText = [MutableStrTools changeColorWithColor:[UIColor redColor] TotalString:testString1 SubStringArray:@[ @"属性"]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
