//
//  JSManager.h
//  BlackMonkey_JSPatch
//
//  Created by 侯志桐Work on 16/7/4.
//  Copyright © 2016年 BlackMonkey. All rights reserved.

//https://github.com/bang590/JSPatch/wiki JSPatch使用说明
//

#import <Foundation/Foundation.h>

@interface JSManager : NSObject
///**
// *  @brief 单例对象
// */
//+(JSManager *)sharedManager;
/**
 *  @brief 加载与传入参数类名相同的js文件
 */
+ (void)loadJsCodeWithClass:(Class)cls;
/**
 *  @brief 根据传入的文件名参数加载jsFile文件夹下的js文件
 */
+ (void)loadJsCodeWithFileName:(NSString*)fileName;

/**
 *  @brief 根据传入的文件绝对路径参数加载js文件
 */
+ (void)loadJsCodeWithFilePath:(NSString*)filePath;

/**
 *  @brief 根据一个网络js文件的url加载js文件
 */
+ (void)loadJsCodeWithJsFileUrl:(NSURL*)jsFileUrl;

@end
