//
//  YJSEMAS.m
//  YJSEMAS
//
//  Created by 裘俊云 on 2023/6/25.
//

#import "YJSEMAS.h"
#import <AlicloudCrash/AlicloudCrashProvider.h>
#import <AlicloudAPM/AlicloudAPMProvider.h>
#import <AlicloudHAUtil/AlicloudHAProvider.h>
#import <AlicloudTLog/AlicloudTlogProvider.h>
#import "YJSEMASConfig.h"
#import <TRemoteDebugger/TRDManagerService.h>


#import <TRemoteDebugger/TLogBiz.h>
#import <TRemoteDebugger/TLogFactory.h>

@interface YJSEMAS ()

@end

@implementation YJSEMAS

+ (void)setup {
    NSString *appBuild = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
    NSString *version = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]; //app版本，会上报
    NSString *appVersion = [NSString stringWithFormat:@"%@_%@", version, appBuild];
    NSString *channel = @"AppStore";     //渠道标记，自定义，会上报
    NSString *nick = YJSEMASConfig.sharedInstance.uuid;      //nick 昵称，自定义，会上报
    [[AlicloudCrashProvider alloc] autoInitWithAppVersion:appVersion channel:channel nick:nick];
    [[AlicloudAPMProvider alloc] autoInitWithAppVersion:appVersion channel:channel nick:nick];
    [[AlicloudTlogProvider alloc] autoInitWithAppVersion:appVersion channel:channel nick:nick];
    [AlicloudHAProvider start];
    [TRDManagerService updateLogLevel:TLogLevelDebug]; //配置项：控制台可拉取的日志级别
}


@end
