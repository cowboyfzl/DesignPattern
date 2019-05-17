//
//  FacadeComputer.m
//  DesignPattern
//
//  Created by mac on 2019/5/9.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "FacadeComputer.h"
#import "FacadeCpu.h"
#import "FacadeDisk.h"
#import "FacadeMotherboard.h"
@interface FacadeComputer ()
@property (nonatomic, strong) FacadeCpu *cpu;
@property (nonatomic, strong) FacadeDisk *disk;
@property (nonatomic, strong) FacadeMotherboard *motherBoard;
@end

@implementation FacadeComputer
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cpu = [FacadeCpu new];
        self.disk = [FacadeDisk new];
        self.motherBoard = [FacadeMotherboard new];
    }
    return self;
}

- (void)start {
    [self.cpu run];
    [self.disk run];
    [self.motherBoard run];
}

- (void)stop {
    [self.cpu stop];
    [self.disk stop];
    [self.motherBoard stop];
}
@end
