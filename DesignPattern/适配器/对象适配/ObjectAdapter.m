//
//  ObjectAdapter.m
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ObjectAdapter.h"
@interface ObjectAdapter ()
@property (nonatomic, strong) Usber *usber;
@end

@implementation ObjectAdapter
- (instancetype)initWithUsber:(Usber *)usber
{
    self = [super init];
    if (self) {
        _usber = usber;
    }
    return self;
}

- (void)ps2 {
    [_usber usb];
}

@end
