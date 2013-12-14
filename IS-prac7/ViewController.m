//
//  ViewController.m
//  IS-prac7
//
//  Created by Chida Mitsuhiro on 13/12/14.
//  Copyright (c) 2013年 Chida Mitsuhiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)prac7_2:(id)sender
{
    NSDictionary *dic = @{@"A": @"ABC",@"B": @"XYZ" };
    NSLog(@"%@",dic);
}

- (IBAction)prac7_3:(id)sender
{
    NSDictionary *cource = @{@"cource1":@"Webアプリ開発I",@"cource2":@"Webアプリ開発II",@"cource3":@"iOSアプリ開発"};
    NSLog(@"%@",cource);
}

- (IBAction)prac7_4:(id)sender
{
    NSDictionary *dict = @{@"ho":@"hohoho",@"hog":@"hoghoghog",@"hoge":@"hogehogehoge"};
    NSLog(@"%@",dict[@"hoge"]);
    NSLog(@"%@",[dict valueForKey:@"hoge"]);
}

- (IBAction)prac7_5:(id)sender
{
    NSDictionary *cources = @{@"cource1":@"Webアプリ開発I",@"cource2":@"Webアプリ開発II",@"cource3":@"iOSアプリ開発"};
    for (NSString *cource in [cources keyEnumerator]) {
        NSLog(@"%@:%@",cource,cources[cource]);
    }
}

- (IBAction)prac7_6:(id)sender
{
    NSDictionary *fxRayes = @{@"USD-JPY":@103.14,@"EUR-JPY":@141.70,@"AUD-JPY":@92.36};
    for (id key in [fxRayes keyEnumerator]) {
        NSLog(@"Currency %@ = ¥ %.2f",key,[fxRayes[key] floatValue]);
    }
}

- (IBAction)prac7_7:(id)sender
{
    NSMutableDictionary *cources = [NSMutableDictionary dictionaryWithCapacity:3];
    cources[@"cource1"] = @"Webアプリ開発I";
    cources[@"cource2"] = @"Webアプリ開発II";
    cources[@"cource3"] = @"iOSアプリ開発";
    NSLog(@"%d %@",cources.count,cources);
    cources[@"cource3"] = @"iOSアプリ開発I";
    NSLog(@"%d %@",cources.count,cources);
    [cources removeObjectForKey:@"cource2"];
    NSLog(@"%d %@",cources.count,cources);
}

@end
