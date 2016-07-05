//
//  HomeController.m
//  BlackMonkey_JSPatch
//
//  Created by 侯志桐Work on 16/7/1.
//  Copyright © 2016年 BlackMonkey. All rights reserved.
//

#import "HomeController.h"
//#import <JS>

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
}
-(void)initViewsFromJsFile{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor blueColor];
    view.center = self.view.center;
    [self.view addSubview:view];
}

@end
