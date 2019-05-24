//
//  Condiment.m
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Condiment.h"

@implementation Condiment
- (instancetype)initWithPancake:(PanCake *)pancake
{
    self = [super init];
    if (self) {
        self.panCake = pancake;
    }
    return self;
}
@end
