//
//  Command.m
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"

@implementation Command

- (void)execute{
    [self done];
}

- (void)cancel{
    self.completion = nil;
}

- (void)done{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_completion) {
            _completion(self);
        }
        self.completion = nil;
        
        [[CommandManager sharedInstance].arrayCommands removeObject:self];
    });
}
@end
