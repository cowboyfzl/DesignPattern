//
//  CrystalShield.m
//  DesignPattern
//
//  Created by mac on 2019/5/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"
@implementation CrystalShield
- (void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[MagicFireAttack class]]) {
        NSLog(@"水晶盾防御了魔法攻击");
    } else {
        NSLog(@"I don`t know this attack %@", [attack class]);
        [super handleAttack:attack];
    }
}
@end
