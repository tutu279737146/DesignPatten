//
//  BaseObjectA.m
//  DesignPatten
//
//  Created by 涂世展 on 2020/3/7.
//  Copyright © 2020 tushizhan. All rights reserved.
//

#import "BaseObjectA.h"

@implementation BaseObjectA

 /*
    A1 --> B1、B2、B3         3种
    A2 --> B1、B2、B3         3种
    A3 --> B1、B2、B3         3种
  */
- (void)handle{
    // override to subclass
    [self.objB fetchData];
}

@end
