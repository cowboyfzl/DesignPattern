
//
//  AccountBookStructure.m
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "AccountBookStructure.h"

@interface AccountBookStructure ()
@property (nonatomic, strong) NSMutableArray <id<Bill>> *listBill;
@end

@implementation AccountBookStructure

- (void)addBill:(id<Bill>)bill {
    [self.listBill addObject:bill];
}

- (void)show:(id<AccountBook>)accountBook {
    for (id<Bill> bill in _listBill) {
        [bill accept:accountBook];
    }
}

- (NSMutableArray<id<Bill>> *)listBill {
    if (!_listBill) {
        _listBill = [NSMutableArray array];
    }
    return _listBill;
}
@end
