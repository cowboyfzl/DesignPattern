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
#import "ClassAdapter.h"
#import "ObjectAdapter.h"
#import "Ashili.h"
#import "GameBoyEmulator.h"
#import "GameGearEmulator.h"
#import "TouchConsoleController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self markTest];
    //[self creatorTest];
//    [self classAdapter];
//    [self protocolAdapter];
    [self bridge];
    // Do any additional setup after loading the view.
}

- (void)markTest {
    //id <CombinationMark> patternTemplate = []
}

- (void)bridge {
    TouchConsoleController *gameBoyConsoleC = [[TouchConsoleController alloc]initWithConsoleCommands:[GameBoyEmulator new]];
    [gameBoyConsoleC start];
    
    TouchConsoleController *gameGearConsoleC = [[TouchConsoleController alloc]initWithConsoleCommands:[GameGearEmulator new]];
    [gameGearConsoleC select];
}

- (void)protocolAdapter {
    Ashili *ashili = [[Ashili alloc]init];
    [ashili a];
    [ashili b];
    
}

- (void)creatorTest {
    [self showBike:[CMoBikeBuilder new]];
    [self showBike:[OfoBikeBuilder new]];
}

- (void)objectAdapter {
    ObjectAdapter *adapter = [[ObjectAdapter alloc]initWithUsber:[Usber new]];
    [adapter ps2];
}

- (void)classAdapter {
    ClassAdapter *adapter = [ClassAdapter new];
    [adapter ps2];
}

- (void)showBike:(id<CBuilderInterface>)builder {
    CDirector *director = [[CDirector alloc]initWithBuilder:builder];
    CBike *bike = [director construct];
    NSLog(@"%@-%@-%@\n", bike.frame, bike.seat, bike.tire);
}
@end
