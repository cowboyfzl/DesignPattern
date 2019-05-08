//
//  TouchConsoleController.m
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "TouchConsoleController.h"

@implementation TouchConsoleController
- (void)up {
    [super setCommand:(ConsoleCommandUp)];
}

- (void)down {
    [super setCommand:(ConsoleCommandDowm)];
}

- (void)left {
    [super setCommand:(ConsoleCommandDowm)];
}

- (void)right {
    [super setCommand:(ConsoleCommandRight)];
}

- (void)select {
    [super setCommand:(ConsoleCommandSelect)];
}

- (void)start {
    [super setCommand:(ConsoleCommandStart)];
}

- (void)action1 {
    [super setCommand:(ConsoleCommandAction1)];
}

- (void)action2 {
    [super setCommand:(ConsoleCommandAction2)];
}

@end
