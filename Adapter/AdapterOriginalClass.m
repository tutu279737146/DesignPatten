//
//  AdapterOriginalClass.m
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "AdapterOriginalClass.h"

@implementation AdapterOriginalClass

- (void)adapterOperation{
    
    // 额外的处理
    // .....
    // 原来的逻辑
    [self.originalClass operation];
    // 额外的处理
    // ......
}
@end
