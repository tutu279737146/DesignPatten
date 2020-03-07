//
//  OriginalClass.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// 原有的类, 时过境迁, 这个类需要适应变化的问题
@interface OriginalClass : NSObject

@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *age;
@property (nonatomic ,copy) NSString *height;

- (void)operation;

@end

NS_ASSUME_NONNULL_END
