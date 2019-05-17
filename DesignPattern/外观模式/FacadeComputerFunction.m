//
//  FacadeComputerFunction.m
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "FacadeComputerFunction.h"

@implementation FacadeComputerFunction
- (void)run {
    NSLog(@"%@ run 起来了", [self class]);
}

- (void)stop {
    NSLog(@"%@ stop 了", [self class]);
}
@end
