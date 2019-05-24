//
//  Ham.m
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Ham.h"

@implementation Ham
- (NSString *)getDesc {
    return [NSString stringWithFormat:@"%@ + %@", [self.panCake getDesc], @"火腿片"];
}

- (double)price {
   return [self.panCake price] + 3;
}
@end
