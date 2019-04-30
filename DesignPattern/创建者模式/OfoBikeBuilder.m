//
//  OfoBikeBuilder.m
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "OfoBikeBuilder.h"
@interface OfoBikeBuilder()
@property (nonatomic, strong) CBike *moBike;
@end

@implementation OfoBikeBuilder

- (void)builderFrame {
    self.moBike.frame = @"OfoBikeBuilder frame";
}

- (void)builderSeat {
    self.moBike.seat = @"OfoBikeBuilder Seat";
}

- (void)builderTire {
    self.moBike.tire = @"OfoBikeBuilder tire";
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
