//
//  CombinationVertex.m
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CombinationVertex.h"

@implementation CombinationVertex
@synthesize location = _location;
@dynamic color, size;
- (instancetype)initWithLocation:(CGPoint )alocation;
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setColor:(UIColor *)color {}
- (UIColor *)color {return nil;}
- (void)setSize:(CGFloat)size{}
- (CGFloat)size{return 0.0;}
- (void)addMark:(id<CombinationMark>)mark{};
- (void)removeMark:(id<CombinationMark>)mark{};
- (id<CombinationMark>)childMarkAtIndex:(NSInteger )index{return nil;}
- (id<CombinationMark>)lastChild {return nil;}
- (NSInteger)count{return 0;}

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class]allocWithZone:zone]initWithLocation:_location];
}
@end
