//
//  CommandManager.h
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommandManager : NSObject

// 命令管理容器
@property (nonatomic ,strong) NSMutableArray <Command *>*arrayCommands;
// 单例管理者
+ (instancetype)sharedInstance;
// 执行命令
+ (void)executeCommand: (Command *)cmd
            completion: (CommandCompletionCallBack)completion;
//取消命令
+ (void)cancelCommand: (Command *)cmd;

@end

NS_ASSUME_NONNULL_END
