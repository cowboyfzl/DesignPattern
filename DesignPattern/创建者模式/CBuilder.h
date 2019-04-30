//
//  CBuilder.h
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//
#import "CBike.h"
@protocol CBuilderInterface <NSObject>

- (void)builderFrame;
- (void)builderSeat;
- (void)builderTire;
- (CBike *)createBike;

@end
