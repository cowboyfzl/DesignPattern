//
//  Avatar.m
//  DesignPattern
//
//  Created by mac on 2019/5/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar
- (void)handleAttack:(Attack *)attack {
    NSLog(@"oh! I`m hit with a %@,", [attack class]);
}
@end
