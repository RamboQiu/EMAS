//
//  YJSAliLog.h
//  YJSEMAS
//
//  Created by 裘俊云 on 2023/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJSAliRemoteLog : NSObject
+ (void)sendLog:(nonnull NSString *)log
       filePath:(nonnull NSString *)filePath
       function:(nonnull NSString *)func
           line:(NSInteger)line;
@end

NS_ASSUME_NONNULL_END
