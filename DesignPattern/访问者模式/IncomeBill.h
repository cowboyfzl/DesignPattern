//
//  IncomeBill.h
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bill.h"
NS_ASSUME_NONNULL_BEGIN

@interface IncomeBill : NSObject <Bill>
- (instancetype)initWithItem:(NSString *)item amount:(double )amount;
- (NSString *)getItem;
- (double )getAmount;
@end

NS_ASSUME_NONNULL_END
