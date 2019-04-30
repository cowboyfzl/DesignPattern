//
//  PCNationalBrefingHorizontalRowView.m
//  DesignPattern
//
//  Created by blm on 2019/4/30.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "PCNationalBrefingHorizontalRowView.h"
@interface PCNationalBrefingHorizontalRowView ()
@property (nonatomic, copy) NSString *headerTitle;
@property (nonatomic, copy) NSString *headerRightContent;
@property (nonatomic, strong) NSArray *placeholderContents;
@property (nonatomic, strong) NSMutableArray *contentLabels;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, copy) void(^selectBlock)(void);
@end

@implementation PCNationalBrefingHorizontalRowView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
