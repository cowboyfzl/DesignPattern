//
//  Bill.h
//  DesignPattern
//
//  Created by mac on 2019/5/22.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccountBook.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Bill <NSObject>
- (void)accept:(id<AccountBook>)accountBook;
@end

NS_ASSUME_NONNULL_END
