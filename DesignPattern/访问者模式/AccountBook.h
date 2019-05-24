//
//  AccountBook.h
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ConsumerBill;
@class IncomeBill;
NS_ASSUME_NONNULL_BEGIN

@protocol AccountBook <NSObject>
/// 查看消费的单子
- (void)viewConsumerBill:(ConsumerBill *)consumerBill;

/// 查看收入单子
- (void)viewIncomeBill:(IncomeBill *)incomeBill;
@end

NS_ASSUME_NONNULL_END
