//
//  ViewController.m
//  DesignPattern
//
//  Created by 法正磊 on 2019/4/24.
//  Copyright © 2019 法正磊. All rights reserved.
//

#import "ViewController.h"
#import "MarkHeader.h"
#import "CDirector.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self markTest];
    [self creatorTest];
    // Do any additional setup after loading the view.
}

- (void)markTest {
    //id <CombinationMark> patternTemplate = []
}

- (void)creatorTest {
    [self showBike:[CMoBikeBuilder new]];
    [self showBike:[OfoBikeBuilder new]];
}

- (void)showBike:(id<CBuilderInterface>)builder {
    CDirector *director = [[CDirector alloc]initWithBuilder:builder];
    CBike *bike = [director construct];
    NSLog(@"%@-%@-%@\n", bike.frame, bike.seat, bike.tire);
}
@end
