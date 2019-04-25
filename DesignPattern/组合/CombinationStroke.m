//
//  CombinationStroke.m
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "CombinationStroke.h"

@implementation CombinationStroke
@synthesize color = _color, size = _size;
@dynamic location;
- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [NSMutableArray array];
    }
    return self;
}

- (void)setLocation:(CGPoint)location {
    
}

- (CGPoint)location {
    if (_children.count > 0) {
        return [[_children objectAtIndex:0]CGPointValue];
    }
    return CGPointZero;
}

- (void)addMark:(id<CombinationMark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<CombinationMark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<CombinationMark>)childMarkAtIndex:(NSInteger)index {
    if (index >= _children.count) {
        return nil;
    }
    
    return _children[index];
}

- (id<CombinationMark>)lastChild {
    return [_children lastObject];
}

- (NSInteger)count {
    return _children.count;
}

- (id)copyWithZone:(NSZone *)zone {
    CombinationStroke *stroke = [[self class]allocWithZone:zone];
    [stroke setColor:[UIColor colorWithCGColor:_color.CGColor]];
    [stroke setSize:_size];
    
    for (id<CombinationMark> child in _children) {
        id<CombinationMark> childCopy = [child copy];
        [stroke addMark:childCopy];
    }
    return stroke;
}
@end
