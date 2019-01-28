//
//  ViewController.m
//  WJGAttributesDemo
//
//  Created by 王俊钢 on 2019/1/28.
//  Copyright © 2019 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "WJGAttributesLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WJGAttributesLabel *attributesLabel = [[WJGAttributesLabel alloc]initWithFrame:CGRectMake(10, 200, [UIScreen mainScreen].bounds.size.width - 20, 44)];
    
    NSString *temp = @"我已经阅读并同意《注册协议》";
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc] initWithString:temp];
    
    NSString *actionStr = @"《注册协议》";
    NSRange range = [temp rangeOfString:actionStr];
    
    NSLog(@"range%@",NSStringFromRange(range));
    [attrStr addAttribute:NSLinkAttributeName
                    value:actionStr
                    range: range];
    
    [attrStr addAttribute:NSFontAttributeName
                    value:[UIFont systemFontOfSize:20]
                    range:NSMakeRange(0, attrStr.length)];
    
    attributesLabel.actionBlock = ^{
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"被点击了" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"我知道了", nil];
        [alertView show];
    };
    
    [attributesLabel setAttributesText:attrStr actionText:actionStr];
    
    [self.view addSubview:attributesLabel];
}


@end
