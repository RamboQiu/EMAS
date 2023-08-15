//
//  YJSAliLog.m
//  YJSEMAS
//
//  Created by 裘俊云 on 2023/8/2.
//

#import "YJSAliRemoteLog.h"
#import <TRemoteDebugger/TLogBiz.h>
#import <TRemoteDebugger/TLogFactory.h>
#import <TRemoteDebugger/TRDManagerService.h>

@implementation YJSAliRemoteLog

+ (void)sendLog:(nonnull NSString *)log
       filePath:(nonnull NSString *)filePath
       function:(nonnull NSString *)func
           line:(NSInteger)line {
    NSString *filename = @"";
    NSString *modulename = @"Test"; // 改为你自己的工程名
    // 通过日志传入的文件名地址，获取到当前文件所在的module名字
    NSURL *fileUrl = [NSURL URLWithString:filePath];
    if (fileUrl != nil) {
        filename = fileUrl.lastPathComponent;
        NSArray *path = fileUrl.pathComponents;
        NSUInteger podIndex = [path indexOfObject:@"Pods"];
        if (podIndex > 0 && podIndex + 1 < path.count) {
            modulename = path[podIndex + 1];
        }
    }

    NSString *msg = [NSString stringWithFormat:@"%@|%@:%ld %@", filename, func, (long)line, log];
    TLogBiz *logBiz = [TLogFactory createTLogForModuleName:modulename];
//    // TODO: 目前只有info级别，后续同yjlog一并改造
    [logBiz info:msg];
}

@end
