//
//  BaseController.m
//  BlackMonkey_JSPatch
//
//  Created by 侯志桐Work on 16/7/4.
//  Copyright © 2016年 BlackMonkey. All rights reserved.
//

#import "BaseController.h"
#import "JSManager.h"
#import <objc/runtime.h>

@interface BaseController ()

@end

@implementation BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadJsFile];
    [self initViewsFromJsFile];
}


-(void)loadJsFile{
    [JSManager loadJsCodeWithClass:[self class]];
}

-(void)initViewsFromJsFile{
    self.navigationItem.title =[[NSString alloc] initWithUTF8String:class_getName([self class])];
}

@end
