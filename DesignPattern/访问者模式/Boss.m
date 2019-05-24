//
//  Boss.m
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Boss.h"
#import "IncomeBill.h"
#import "ConsumerBill.h"
@interface Boss ()
@property (nonatomic, copy) NSString *consumerTotal;
@property (nonatomic, copy) NSString *incomeTotal;
@end
@implementation Boss
- (void)viewIncomeBill:(IncomeBill *)incomeBill {
    double total = [_incomeTotal doubleValue];
    total += [incomeBill getAmount];
    _incomeTotal = [NSString stringWithFormat:@"%f", total];
}

- (void)viewConsumerBill:(ConsumerBill *)consumerBill {
    double total = [_consumerTotal doubleValue];
    total += [consumerBill getAmount];
    _consumerTotal = [NSString stringWithFormat:@"%f", total];
}

- (void)getTotalConsumer {
    NSLog(@"%@", [NSString stringWithFormat:@"老板一共消费了%@", _consumerTotal]);
}

- (void)getTotalIncome {
    NSLog(@"%@", [NSString stringWithFormat:@"老板一共有%@收入", _incomeTotal]);
}
@end
