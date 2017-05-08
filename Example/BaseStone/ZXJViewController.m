//
//  ZXJViewController.m
//  BaseStone
//
//  Created by maodenden on 05/07/2017.
//  Copyright (c) 2017 maodenden. All rights reserved.
//

#import "ZXJViewController.h"
#import "HttpUtil.h"

@interface ZXJViewController ()

@end

@implementation ZXJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *d = @{@"p" : @{@"userid" : @200,  @"uuid" : @"12f49cab220772554664da4920777ed7e4537bcd"}};
    [HttpUtil postWithURL:@"http://wifi.api.0086wifi.com/G.0.1/1002/312/837956813DF2A9C287342202A350B4F3/JSON" args:d callback:^(NSDictionary *data) {
        NSLog(@"==========%@", data[@"msg"]);
        NSArray *array = data[@"list"];
        for (NSDictionary *d in array) {
            NSLog(@"==========%@", d);
        }
        
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
