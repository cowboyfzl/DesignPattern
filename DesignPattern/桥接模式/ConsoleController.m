//
//  ConsoleController.m
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ConsoleController.h"

@interface ConsoleController()
@property (nonatomic, strong) id<ConsoleCommands> consoleCommand;
@end

@implementation ConsoleController
- (instancetype)initWithConsoleCommands:(id<ConsoleCommands>)consoleCommands
{
    self = [super init];
    if (self) {
        _consoleCommand = consoleCommands;
    }
    return self;
}
- (void)setCommand:(ConsoleCommand )command {
    [_consoleCommand loadInstructionForCommand:command];
    [_consoleCommand executeInstructions];
}
@end
