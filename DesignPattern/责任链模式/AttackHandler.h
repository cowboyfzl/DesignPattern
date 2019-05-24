//
//  AttackHandler.h
//  DesignPattern
//
//  Created by mac on 2019/5/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
NS_ASSUME_NONNULL_BEGIN

@interface AttackHandler : NSObject
@property (nonatomic, strong) AttackHandler *nextAttack;
- (void)handleAttack:(Attack *)attack;
@end

NS_ASSUME_NONNULL_END
