//
//  Condiment.h
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "PanCake.h"

NS_ASSUME_NONNULL_BEGIN

@interface Condiment : PanCake
@property (nonatomic, strong) PanCake *panCake;
- (instancetype)initWithPancake:(PanCake *)pancake;
@end

NS_ASSUME_NONNULL_END
