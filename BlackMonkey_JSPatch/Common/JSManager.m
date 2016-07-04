//
//  JSManager.m
//  BlackMonkey_JSPatch
//
//  Created by 侯志桐Work on 16/7/4.
//  Copyright © 2016年 BlackMonkey. All rights reserved.
//

#import "JSManager.h"
#import <objc/runtime.h>
#import "JPEngine.h"
#define JS_DICTIONARY (@"JsFile")

@implementation JSManager
/**
 *  @brief 单例对象
 */
//+(JSManager *)sharedManager{
//    static JSManager *sharedManager;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        sharedManager = [[JSManager alloc] init];
//    });
//    return sharedManager;
//}
/**
 *  @brief 加载与传入参数类名相同的js文件
 */
+(void)loadJsCodeWithClass:(Class)cls{
    NSString *className =  [[NSString alloc] initWithUTF8String:class_getName(cls)];
    NSString *fileName = [className stringByAppendingString:@".js"];
    [self loadJsCodeWithFileName:fileName];
}
/**
 *  @brief 根据传入的文件名参数加载NSBundle下jsFile文件夹下的js文件
 */
+(void)loadJsCodeWithFileName:(NSString *)fileName{
    
    NSString *absoluteFilePath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil inDirectory:nil];
    
//    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES) firstObject];
//    NSString *absoluteFilePath = [[documentPath stringByAppendingPathComponent:JS_DICTIONARY] stringByAppendingString:fileName];
    [self loadJsCodeWithFilePath:absoluteFilePath];
//    [NSBundle]
}

/**
 *  @brief 根据传入的文件绝对路径参数加载js文件
 */
+(void)loadJsCodeWithFilePath:(NSString *)filePath{
    if(![[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        //文件不存在
        @throw [NSException exceptionWithName:@"文件不存在" reason:@"" userInfo:nil];
    }
    NSString *jsCodeStr = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:jsCodeStr];
//    [JPEngine evaluateScriptWithPath:(NSString *)]
}

/**
 *  @brief 根据一个网络js文件的url加载js文件
 */
+(void)loadJsCodeWithJsFileUrl:(NSURL *)jsFileUrl{

}
@end
