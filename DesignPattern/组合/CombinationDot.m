//
//  CombinationDot.m
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CombinationDot.h"

@implementation CombinationDot
@synthesize color = _color, size = _size;
//- (void)drawWithContext:(CGContextRef)context {
//    CGFloat x = self.location.x;
//    CGFloat y = self.location.y;
//    CGFloat frameSize = self.size;
//    CGRect frame = CGRectMake(x - frameSize, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
//}

- (id)copyWithZone:(NSZone *)zone {
    CombinationDot *dot = [[[self class]allocWithZone:zone]initWithLocation:_location];
    [dot setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [dot setSize:_size];
    return dot;
}
@end
