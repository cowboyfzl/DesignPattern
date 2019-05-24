//
//  PanCake.h
//  DesignPattern
//
//  Created by mac on 2019/5/23.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PanCake : NSObject
@property (nonatomic, copy) NSString *desc;
- (double)price;
- (NSString *)getDesc;
@end

NS_ASSUME_NONNULL_END
