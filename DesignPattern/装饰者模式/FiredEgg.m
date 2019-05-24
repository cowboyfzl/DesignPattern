//
//  FiredEgg.m
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "FiredEgg.h"

@implementation FiredEgg
- (NSString *)getDesc {
    return [NSString stringWithFormat:@"%@ + %@", [self.panCake getDesc], @"煎蛋"];
}

- (double)price {
    return [self.panCake price] + 3;
}
@end
