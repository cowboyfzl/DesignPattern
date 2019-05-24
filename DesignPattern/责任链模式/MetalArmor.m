//
//  MetalArmor.m
//  DesignPattern
//
//  Created by mac on 2019/5/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"
@implementation MetalArmor
- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SwordAttack class]]) {
        NSLog(@"%@", @"攻击被这个盔甲防御住了");
    } else {
        NSLog( @"I dont know this attack %@", [attack class]);
        [super handleAttack:attack];
    }
}
@end
