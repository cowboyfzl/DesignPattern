//
//  Accounting.m
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Accounting.h"
#import "ConsumerBill.h"
#import "IncomeBill.h"

@interface Accounting ()
@property (nonatomic, assign) NSInteger count;
@end
@implementation Accounting
- (void)viewConsumerBill:(ConsumerBill *)consumerBill {
    if ([[consumerBill getItem] isEqualToString:@"消费"]) {
        _count += 1;
        NSLog(@"%@", [NSString stringWithFormat:@"第%ld个单子消费了%f:", _count, [consumerBill getAmount]]);
    }
}

- (void)viewIncomeBill:(IncomeBill *)incomeBill {
    if ([[incomeBill getItem] isEqualToString:@"收入"]) {
        NSLog(@"%@", [NSString stringWithFormat:@"第%ld个单子收入%f:", _count, [incomeBill getAmount]]);
    }
}
@end
