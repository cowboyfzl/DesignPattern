//
//  MoBikeBuilder.m
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CMoBikeBuilder.h"
@interface CMoBikeBuilder()
@property (nonatomic, strong) CBike *moBike;
@end

@implementation CMoBikeBuilder

- (void)builderFrame {
    self.moBike.frame = @"CMoBikeBuilder frame";
}

- (void)builderSeat {
    self.moBike.seat = @"CMoBikeBuilder Seat";
}

- (void)builderTire {
    self.moBike.tire = @"CMoBikeBuilder tire";
}

- (CBike *)createBike {
    return self.moBike;
}

- (CBike *)moBike {
    if (!_moBike) {
        _moBike = [CBike new];
    }
    return _moBike;
}

@end
