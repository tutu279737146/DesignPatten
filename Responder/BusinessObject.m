//
//  BusinessObject.m
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "BusinessObject.h"

@implementation BusinessObject

//MARK: 责任链模式的入口
- (void)handle:(ResultBlock)result{
    CompletionBlock completion = ^(BOOL handled){
        // 如果当前业务处理了,上抛结果
        if (handled) {
            result(self, handled);
        }
        // 如果业务没处理,沿着响应链指派给下一个业务处理
        else{
            // 有下一级业务
            if (self.nextBusiness) {
                [self.nextBusiness handle:result];
            }
            // 没有业务,是链条最后
            else{
                result(nil, NO);
            }
        }
    };
    
    // 当期的业务处理
    [self handleBusiness:completion];
}
//MARK: 当前业务处理
- (void)handleBusiness:(CompletionBlock)completion{
    
    // 具体的业务逻辑
    // 如网络接口,本地查询等
    
}
@end
