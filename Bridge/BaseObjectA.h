//
//  BaseObjectA.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObjectB.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseObjectA : NSObject

// 桥接模式的核心实现
@property (nonatomic ,strong) BaseObjectB *objB;

- (void)handle;

@end

NS_ASSUME_NONNULL_END
