//
//  ConsoleCommands.h
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, ConsoleCommand) {
    ConsoleCommandUp = 0,
    ConsoleCommandDowm,
    ConsoleCommandLeft,
    ConsoleCommandRight,
    ConsoleCommandSelect,
    ConsoleCommandStart,
    ConsoleCommandAction1,
    ConsoleCommandAction2,
};

NS_ASSUME_NONNULL_BEGIN


@protocol ConsoleCommands <NSObject>
- (void)loadInstructionForCommand:(ConsoleCommand )command;
- (void)executeInstructions;
@end

NS_ASSUME_NONNULL_END
