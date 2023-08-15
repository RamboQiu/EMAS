//
//  YJSEMASConfig.m
//  YJSEMAS
//
//  Created by 裘俊云 on 2023/8/2.
//

#import "YJSEMASConfig.h"
#import <UTDID/UTDevice.h>

@implementation YJSEMASConfig

+ (instancetype)sharedInstance {
    static YJSEMASConfig *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[YJSEMASConfig alloc] init];
    });
    return shared;
}

+ (NSString *)aliUtdid {
    return [UTDevice utdid];
}

@end
