//
//  Command.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
NS_ASSUME_NONNULL_BEGIN

typedef void(^CommandCompletionCallBack)(Command *cmd);

@interface Command : NSObject

@property (nonatomic,copy) CommandCompletionCallBack completion;

- (void)execute;

- (void)cancel;

- (void)done;

@end

NS_ASSUME_NONNULL_END
