//
//  ViewController.m
//  BlockDemo
//
//  Created by Andy on 14-8-7.
//  Copyright (c) 2014年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "IAmClassA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"点我啊，crash给你看" forState:UIControlStateNormal];
    btn.frame = CGRectMake(20, 40, 150, 40);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(id)sender{
    IAmClassA * A = [[IAmClassA alloc] initWithTextQueryWith:@"233333"];
                     
    [A showWithCompletionBlock:^(void) {
        // do some thing
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
