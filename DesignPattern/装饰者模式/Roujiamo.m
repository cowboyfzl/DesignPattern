//
//  Roujiamo.m
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Roujiamo.h"

@implementation Roujiamo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.desc = @"肉夹馍";
    }
    return self;
}

- (double)price {
    return 6;
}

@end
