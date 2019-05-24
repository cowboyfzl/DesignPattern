//
//  TornCake.m
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "TornCake.h"

@implementation TornCake

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.desc = @"手抓饼";
    }
    return self;
}


- (double)price {
    return 4;
}



@end
