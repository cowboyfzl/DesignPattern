//
//  ClassAdapter.h
//  DesignPattern
//
//  Created by mac on 2019/5/8.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "Usber.h"
#import "PS2.h"
NS_ASSUME_NONNULL_BEGIN

@interface ClassAdapter : Usber <PS2Protocol>

@end

NS_ASSUME_NONNULL_END
