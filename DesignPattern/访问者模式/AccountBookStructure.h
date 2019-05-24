//
//  AccountBookStructure.h
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bill.h"
#import "AccountBook.h"
NS_ASSUME_NONNULL_BEGIN

@interface AccountBookStructure : NSObject
- (void)addBill:(id<Bill>)bill;
- (void)show:(id<AccountBook>)accountBook;
@end

NS_ASSUME_NONNULL_END
