//
//  GameBoyEmulator.m
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "GameBoyEmulator.h"
@implementation GameBoyEmulator
- (void)loadInstructionForCommand:(ConsoleCommand)command {
    NSLog(@"%@开始执行%lu", NSStringFromClass([self class]), command);
}

- (void)executeInstructions {
    NSLog(@"%@开始执行", NSStringFromClass([self class]));
}
@end
