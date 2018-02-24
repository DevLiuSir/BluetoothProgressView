//
//  ViewController.m
//  BluetoothProgressView-Objc
//
//  Created by Liu Chuan on 2018/2/21.
//  Copyright © 2018年 LC. All rights reserved.
//

#import "ViewController.h"
#import "BluetoothProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* BluetoothProgressView */
    BluetoothProgressView *bleProgressView = [[BluetoothProgressView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:bleProgressView];
    
}



@end
