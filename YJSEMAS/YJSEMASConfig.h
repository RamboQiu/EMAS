//
//  YJSEMASConfig.h
//  YJSEMAS
//
//  Created by 裘俊云 on 2023/8/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJSEMASConfig : NSObject

+ (instancetype)sharedInstance;

+ (NSString *)aliUtdid;

@property (nonatomic, strong) NSString *uuid;

@end

NS_ASSUME_NONNULL_END
