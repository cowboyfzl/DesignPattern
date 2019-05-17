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
#import "FacadeComputer.h"
#import "ConcreteMediator.h"
#import "ConcreteColleagueA.h"
#import "ConcreteColleagueB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self markTest];
    //[self creatorTest];
//    [self classAdapter];
//    [self protocolAdapter];
   // [self bridge];
   // [self facade];
    [self mediator];
    // Do any additional setup after loading the view.
}

/**
 中介者（Mediator）模式的定义：定义一个中介对象来封装一系列对象之间的交互，使原有对象之间的耦合松散，且可以独立地改变它们之间的交互。中介者模式又叫调停模式，它是迪米特法则的典型应用。
 
 中介者模式是一种对象行为型模式，其主要优点如下。
 降低了对象之间的耦合性，使得对象易于独立地被复用。
 将对象间的一对多关联转变为一对一的关联，提高系统的灵活性，使得系统易于维护和扩展。
 
 其主要缺点是：当同事类太多时，中介者的职责将很大，它会变得复杂而庞大，以至于系统难以维护。
 */
- (void)mediator {
    ConcreteMediator *mediator = [[ConcreteMediator alloc]init];
    ConcreteColleagueA *colleagueA = [ConcreteColleagueA new];
    ConcreteColleagueB *colleagueB = [ConcreteColleagueB new];
    [mediator registetWithColleague:colleagueA];
    [mediator registetWithColleague:colleagueB];
    [colleagueA send];
    NSLog(@"-------------");
    [colleagueB send];
}

/**
 外观模式（Facade）,他隐藏了系统的复杂性，并向客户端提供了一个可以访问系统的接口。这种类型的设计模式属于结构性模式。为子系统中的一组接口提供了一个统一的访问接口，这个接口使得子系统更容易被访问或者使用。
 
 二、角色及使用场景
 
 
 　　简单来说，该模式就是把一些复杂的流程封装成一个接口供给外部用户更简单的使用。这个模式中，设计到3个角色。
 
 　　1）.门面角色：外观模式的核心。它被客户角色调用，它熟悉子系统的功能。内部根据客户角色的需求预定了几种功能的组合。
 
 　　2）.子系统角色:实现了子系统的功能。它对客户角色和Facade时未知的。它内部可以有系统内的相互交互，也可以由供外界调用的接口。
 
 　　3）.客户角色:通过调用Facede来完成要实现的功能。
 */
- (void)facade {
    FacadeComputer *computer = [FacadeComputer new];
    [computer start];
    [computer stop];
}

/**
 原型模式（Prototype Pattern）
 是用于创建重复的对象，同时又能保证性能。这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
 这种模式是实现了一个原型接口，该接口用于创建当前对象的克隆。当直接创建对象的代价比较大时，则采用这种模式。例如，一个对象需要在一个高代价的数据库操作之后被创建。我们可以缓存该对象，在下一个请求时返回它的克隆，在需要的时候更新数据库，以此来减少数据库调用。
 */
- (void)markTest {
    //id <CombinationMark> patternTemplate = []
}

/**
桥接模式（Bridge)是一种结构型设计模式。Bridge模式基于类的最小设计原则，通过使用封装、聚合及继承等行为让不同的类承担不同的职责。它的主要特点是把抽象(Abstraction)与行为实现(Implementation)分离开来，从而可以保持各部分的独立性以及应对他们的功能扩展。

桥接模式的角色和职责：

1.Client 调用端

这是Bridge模式的调用者。

2.抽象类（Abstraction）

抽象类接口（接口这货抽象类）维护队行为实现（implementation）的引用。它的角色就是桥接类。

3.Refined Abstraction

这是Abstraction的子类。

4.Implementor

行为实现类接口（Abstraction接口定义了基于Implementor接口的更高层次的操作）

5.ConcreteImplementor

Implementor的子类
 */
- (void)bridge {
    TouchConsoleController *gameBoyConsoleC = [[TouchConsoleController alloc]initWithConsoleCommands:[GameBoyEmulator new]];
    [gameBoyConsoleC start];
    
    TouchConsoleController *gameGearConsoleC = [[TouchConsoleController alloc]initWithConsoleCommands:[GameGearEmulator new]];
    [gameGearConsoleC select];
}


/**
 适配器模式
 原理：通过继承来实现适配器功能。
 
 　　当我们要访问的接口A中没有我们想要的方法 ，却在另一个接口B中发现了合适的方法，我们又不能改变访问接口A，在这种情况下，我们可以定义一个适配器p来进行中转，这个适配器p要实现我们访问的接口A，这样我们就能继续访问当前接口A中的方法（虽然它目前不是我们的菜），然后再继承接口B的实现类BB，这样我们可以在适配器P中访问接口B的方法了，这时我们在适配器P中的接口A方法中直接引用BB中的合适方法，这样就完成了一个简单的类适配器。
 */
- (void)protocolAdapter {
    Ashili *ashili = [[Ashili alloc]init];
    [ashili a];
    [ashili b];
    
}

- (void)objectAdapter {
    ObjectAdapter *adapter = [[ObjectAdapter alloc]initWithUsber:[Usber new]];
    [adapter ps2];
}

- (void)classAdapter {
    ClassAdapter *adapter = [ClassAdapter new];
    [adapter ps2];
}

/**
 创建者模式
 创建者模式又叫建造者模式，是将一个复杂的对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。创建者模式隐藏了复杂对象的创建过程，它把复杂对象的创建过程加以抽象，通过子类继承或者重载的方式，动态的创建具有复合属性的对象。
 
 创建者模式通常包括如下几种角色：
 
 1.建造者角色（Builder）
 
 对复杂对象的创建过程加以抽象，给出一个抽象接口，以规范产品对象的各个组成部分的建造。这个接口规定了要实现复杂对象的哪个部分的创建，但并不涉及具体对象不见的创建。
 
 2.具体创建者角色（ConcreateBuilder）
 
 实现Builder接口，针对不同的业务逻辑，具体化复杂对象的各个部分的创建。在建造过程完成后，提供产品的实例。
 
 3.指导者（Director）
 
 调用具体建造者来创建复杂对象的各个部分，在指导者中不设计具体产品的信息，只负责保证对象各部分完整创建或者按某种顺序创建。
 
 4.产品（Product）
 
 要创建的复杂对象，一般来说包含多个部分。
 */
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
