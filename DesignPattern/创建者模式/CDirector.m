//
//  CDirector.m
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CDirector.h"

@interface CDirector ()
@property (nonatomic, strong) id <CBuilderInterface> builderInterface;
@end

@implementation CDirector
- (instancetype)initWithBuilder:(id<CBuilderInterface>)builder
{
    self = [super init];
    if (self) {
        _builderInterface = builder;
    }
    return self;
}

- (CBike *)construct {
    [_builderInterface builderTire];
    [_builderInterface builderSeat];
    [_builderInterface builderFrame];
    return [_builderInterface createBike];
}
@end
