//
//  ConsoleController.h
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"
NS_ASSUME_NONNULL_BEGIN

@interface ConsoleController : NSObject
- (instancetype)initWithConsoleCommands:(id<ConsoleCommands>)consoleCommands;
- (void)setCommand:(ConsoleCommand )command;
@end

NS_ASSUME_NONNULL_END
