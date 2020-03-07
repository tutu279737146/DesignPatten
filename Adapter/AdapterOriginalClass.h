//
//  AdapterOriginalClass.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginalClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdapterOriginalClass : NSObject

// 被适配的对象
@property (nonatomic ,strong) OriginalClass *originalClass;
// 对原有的方法进行封装
- (void)adapterOperation;

@end

NS_ASSUME_NONNULL_END
