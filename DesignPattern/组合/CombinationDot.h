//
//  CombinationDot.h
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CombinationVertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface CombinationDot : CombinationVertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}
@end

NS_ASSUME_NONNULL_END
