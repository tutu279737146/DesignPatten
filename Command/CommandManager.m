//
//  CommandManager.m
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

+ (instancetype)sharedInstance{
    static CommandManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}
// 【必不可少】
+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}

// 【必不可少】
- (id)copyWithZone:(nullable NSZone *)zone{
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        // 初始化命令容器
        _arrayCommands = [NSMutableArray array];
    }
    return self;
}
//MARK: 执行命令
+ (void)executeCommand:(Command *)cmd
            completion:(CommandCompletionCallBack)completion{
    if (cmd) {
        // 当前命令如果正在执行,不做处理; 反之添加并执行命令
        if (![self _isExecutingCommand:cmd]) {
            // 添加命令到容器中
            [[[self sharedInstance] arrayCommands] addObject:cmd];
            // 设置命令执行完成的回调
            cmd.completion = completion;
            // 执行命令
            [cmd execute];
        }
    }
}
//MARK: 取消命令
+ (void)cancelCommand:(Command *)cmd{
    if (cmd) {
        // 移除
        [[[self sharedInstance] arrayCommands] removeObject:cmd];
        // 取消命令执行
        [cmd cancel];
    }
}
//MARK: 判断当前命令是否在执行
+ (BOOL)_isExecutingCommand: (Command *)cmd{
    if (cmd) {
        NSArray *cmds = [[self sharedInstance] arrayCommands];
        for (Command *acmd in cmds) {
            if (cmd == acmd) {
                return YES;
            }
        }
    }
    return NO;
}
@end
