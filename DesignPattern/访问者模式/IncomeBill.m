//
//  IncomeBill.m
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "IncomeBill.h"

@interface IncomeBill ()
@property (nonatomic, strong) NSString *item;
@property (nonatomic, assign) double amount;
@end

@implementation IncomeBill
- (instancetype)initWithItem:(NSString *)item amount:(double )amount
{
    self = [super init];
    if (self) {
        _item = item;
        _amount = amount;
    }
    return self;
}

- (void)accept:(id<AccountBook>)accountBook {
    [accountBook viewIncomeBill:self];
}

- (NSString *)getItem {
    return self.item;
}

- (double)getAmount {
    return self.amount;
}

@end
