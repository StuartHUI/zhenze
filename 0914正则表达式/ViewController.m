//
//  ViewController.m
//  0914正则表达式
//
//  Created by feifan on 16/9/14.
//  Copyright © 2016年 huishuai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//正则表达式是对字符串操作的一种逻辑公式
    //1、通过正则表达式可以检测给定的字符串是否符合我们定义的逻辑
    //2、还可以从字符串中获取我们想要的特定内容
//    [self aaaaa];
//    [self bbbb];
//    [self shenfen];
    [self Email];
//    [self chinese];
}
-(void)chinese{
    NSString *chinese=@"哒哒哒";
    NSString *regex=@"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    //判断
    if ([predicate evaluateWithObject:chinese]) {
        NSLog(@"OK");
    }
    else{
        NSLog(@"不 OK");
    }

}

-(void)Email{
    NSString *email=@"245068482@qq.com";
    
    NSString *regex=@"^[[a-zA-Z]+|\\d]@[[a-zA-Z]+|\\d|.|-].[a-zA-Z]{2,3}$";

    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    //判断
    if ([predicate evaluateWithObject:email]) {
        NSLog(@"OK");
    }
    else{
        NSLog(@"NO OK");
    }
}
-(void)shenfen{
    //
    NSString *shenfen=@"610732190012345678";
    NSString *regex=@"^\\d{6}[1|2]\\d{10}[\\d{1}|x|X]$";
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    //判断
    if ([predicate evaluateWithObject:shenfen]) {
        NSLog(@"OK");
    }
    else{
        NSLog(@"NO OK");
    }
}

-(void)bbbb{
    //检测座机
    NSString *tel=@"0912-57658277";
    NSString *regex=@"^0\\d{2,3}-\\d{7,8}$";
    //谓词
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    //判断
    if ([predicate evaluateWithObject:tel]) {
        NSLog(@"OK");
    }
    else{
        NSLog(@"NO OK");
    }
}
-(void)aaaaa{
    NSString *phoneNum=@"18333333333";
    //定义规则
    NSString *regex=@"^1[3|4|5|7|8|9][0-9]{9}$";
    //谓词
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    //判断
    if ([predicate evaluateWithObject:phoneNum]) {
        NSLog(@"OK");
    }
    else{
        NSLog(@"NO OK");
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
