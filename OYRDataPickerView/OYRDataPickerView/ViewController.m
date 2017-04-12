//
//  ViewController.m
//  OYRDataPickerView
//
//  Created by 欧阳荣 on 17/4/7.
//  Copyright © 2017年 HengTaiXin. All rights reserved.
//

#import "ViewController.h"
#import "OYRPickView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 200, 40);
    btn.center = self.view.center;
    [btn setTitle:@"选择球场" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)btnClick:(UIButton *)btn{

    OYRPickView *pickView = [[OYRPickView alloc] init];
    [pickView setDataViewWithItem:@[@"中国球场",@"日韩球场",@"欧美球场",@"全部球场"] title:@"球场选择"];
    [pickView showPickView:self];
    pickView.block = ^(NSString *selectedStr)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"你选择的球场是:" message:selectedStr delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    };


}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
