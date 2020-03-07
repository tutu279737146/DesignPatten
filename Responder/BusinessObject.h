//
//  BusinessObject.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BusinessObject;

NS_ASSUME_NONNULL_BEGIN
typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(BusinessObject *handler, BOOL handled);

@interface BusinessObject : NSObject

// 下一个响应者
@property (nonatomic ,strong) BusinessObject *nextBusiness;
// 响应者的处理方法
- (void)handle: (ResultBlock)result;
// 每个业务在该方法中做实际的业务处理
- (void)handleBusiness: (CompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
