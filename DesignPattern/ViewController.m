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
#import "AccountBookStructure.h"
#import "ConsumerBill.h"
#import "IncomeBill.h"
#import "Boss.h"
#import "Accounting.h"
#import "Ham.h"
#import "FiredEgg.h"
#import "TornCake.h"
#import "Roujiamo.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightingAttack.h"
#import "MetalArmor.h"
#import "CrystalShield.h"
#import "Avatar.h"

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
    //[self mediator];
    //[self visitorModel];
    //[self decorator];
    [self chainOfResponsibilityPattern];
    // Do any additional setup after loading the view.
}
/**
 顾名思义，责任链模式（Chain of Responsibility Pattern）为请求创建了一个接收者对象的链。这种模式给予请求的类型，对请求的发送者和接收者进行解耦。这种类型的设计模式属于行为型模式。
 在这种模式中，通常每个接收者都包含对另一个接收者的引用。如果一个对象不能处理该请求，那么它会把相同的请求传给下一个接收者，依此类推。
 
 意图：避免请求发送者与接收者耦合在一起，让多个对象都有可能接收请求，将这些对象连接成一条链，并且沿着这条链传递请求，直到有对象处理它为止。
 主要解决：职责链上的处理者负责处理请求，客户只需要将请求发送到职责链上即可，无须关心请求的处理细节和请求的传递，所以职责链将请求的发送者和请求的处理者解耦了。
 何时使用：在处理消息的时候以过滤很多道。
 如何解决：拦截的类都实现统一接口。
 关键代码：Handler 里面聚合它自己，在 HandlerRequest 里判断是否合适，如果没达到条件则向下传递，向谁传递之前 set 进去。
 应用实例： 1、红楼梦中的"击鼓传花"。 2、JS 中的事件冒泡。 3、JAVA WEB 中 Apache Tomcat 对 Encoding 的处理，Struts2 的拦截器，jsp servlet 的 Filter。
 优点： 1、降低耦合度。它将请求的发送者和接收者解耦。 2、简化了对象。使得对象不需要知道链的结构。 3、增强给对象指派职责的灵活性。通过改变链内的成员或者调动它们的次序，允许动态地新增或者删除责任。 4、增加新的请求处理类很方便。
 缺点： 1、不能保证请求一定被接收。 2、系统性能将受到一定影响，而且在进行代码调试时不太方便，可能会造成循环调用。 3、可能不容易观察运行时的特征，有碍于除错。
 使用场景： 1、有多个对象可以处理同一个请求，具体哪个对象处理该请求由运行时刻自动确定。 2、在不明确指定接收者的情况下，向多个对象中的一个提交一个请求。 3、可动态指定一组对象处理请求。
 */
- (void)chainOfResponsibilityPattern {
    AttackHandler *avatar = [Avatar new];
    AttackHandler *metalArmorAvatar = [MetalArmor new];
    [metalArmorAvatar setNextAttack:avatar];
    
    AttackHandler *superAvatar = [CrystalShield new];
    [superAvatar setNextAttack:metalArmorAvatar];
    
    Attack *swordAttack = [SwordAttack new];
    [superAvatar handleAttack:swordAttack];
    
    Attack *magicAttack = [MagicFireAttack new];
    [superAvatar handleAttack:magicAttack];
    
    Attack *lightingAttack = [LightingAttack new];
    [superAvatar handleAttack:lightingAttack];
}

/**
 、意图： 动态地给一个对象添加一些额外的职责。就增加功能来说， Decorator模式相比生成子类更为灵活。该模式以对客 户端透明的方式扩展对象的功能。
 
 2、适用环境
 
 （1）在不影响其他对象的情况下，以动态、透明的方式给单个对象添加职责。
 
 （2）处理那些可以撤消的职责。
 
 （3）当不能采用生成子类的方法进行扩充时。一种情况是，可能有大量独立的扩展，为支持每一种组合将产生大量的 子类，使得子类数目呈爆炸性增长。另一种情况可能是因为类定义被隐藏，或类定义不能用于生成子类。
 
 3、参与者
 
 1.Component（被装饰对象的基类）
 
 定义一个对象接口，可以给这些对象动态地添加职责。
 
 2.ConcreteComponent（具体被装饰对象）
 
 定义一个对象，可以给这个对象添加一些职责。
 
 3.Decorator（装饰者抽象类）
 
 维持一个指向Component实例的引用，并定义一个与Component接口一致的接口。
 
 4.ConcreteDecorator（具体装饰者）
 
 具体的装饰对象，给内部持有的具体被装饰对象，增加具体的职责。
 */
- (void)decorator {
    PanCake *tornCake = [[TornCake alloc]init];
    NSLog(@"%@基础价%f", tornCake.desc, tornCake.price);
    tornCake = [[FiredEgg alloc]initWithPancake:tornCake];
    tornCake = [[Ham alloc]initWithPancake:tornCake];
    NSLog(@"%@，%f", [tornCake getDesc], [tornCake price]);
    
}

/**
模式的定义与特点

访问者（Visitor）模式的定义：将作用于某种数据结构中的各元素的操作分离出来封装成独立的类，使其在不改变数据结构的前提下可以添加作用于这些元素的新的操作，为数据结构中的每个元素提供多种访问方式。它将对数据的操作与数据结构进行分离，是行为类模式中最复杂的一种模式。

访问者（Visitor）模式是一种对象行为型模式，其主要优点如下。
扩展性好。能够在不修改对象结构中的元素的情况下，为对象结构中的元素添加新的功能。
复用性好。可以通过访问者来定义整个对象结构通用的功能，从而提高系统的复用程度。
灵活性好。访问者模式将数据结构与作用于结构上的操作解耦，使得操作集合可相对自由地演化而不影响系统的数据结构。
符合单一职责原则。访问者模式把相关的行为封装在一起，构成一个访问者，使每一个访问者的功能都比较单一。

访问者（Visitor）模式的主要缺点如下。
增加新的元素类很困难。在访问者模式中，每增加一个新的元素类，都要在每一个具体访问者类中增加相应的具体操作，这违背了“开闭原则”。
破坏封装。访问者模式中具体元素对访问者公布细节，这破坏了对象的封装性。
违反了依赖倒置原则。访问者模式依赖了具体类，而没有依赖抽象类。
模式的结构与实现

访问者（Visitor）模式实现的关键是如何将作用于元素的操作分离出来封装成独立的类，其基本结构与实现方法如下。
1. 模式的结构

访问者模式包含以下主要角色。
抽象访问者（Visitor）角色：定义一个访问具体元素的接口，为每个具体元素类对应一个访问操作 visit() ，该操作中的参数类型标识了被访问的具体元素。
具体访问者（ConcreteVisitor）角色：实现抽象访问者角色中声明的各个访问操作，确定访问者访问一个元素时该做什么。
抽象元素（Element）角色：声明一个包含接受操作 accept() 的接口，被接受的访问者对象作为 accept() 方法的参数。
具体元素（ConcreteElement）角色：实现抽象元素角色提供的 accept() 操作，其方法体通常都是 visitor.visit(this) ，另外具体元素中可能还包含本身业务逻辑的相关操作。
对象结构（Object Structure）角色：是一个包含元素角色的容器，提供让访问者对象遍历容器中的所有元素的方法，通常由 List、Set、Map 等聚合类实现。
  */

- (void)visitorModel {
     // 创建消费和收入单子
    id<Bill> consumerBill = [[ConsumerBill alloc]initWithItem:@"消费" amount:5000];
    id<Bill> inComeBill = [[IncomeBill alloc]initWithItem:@"收入" amount:2000];
    id<Bill> consumerBill2 = [[ConsumerBill alloc]initWithItem:@"消费" amount:1000];
    id<Bill> inComeBill2 = [[IncomeBill alloc]initWithItem:@"收入" amount:3000];
    
    /// 添加账单
    AccountBookStructure *accountBookStructure = [[AccountBookStructure alloc]init];
    [accountBookStructure addBill:consumerBill];
    [accountBookStructure addBill:inComeBill];
    [accountBookStructure addBill:consumerBill2];
    [accountBookStructure addBill:inComeBill2];
    
    Boss *boss = [Boss new];
    Accounting *accounting = [Accounting new];
    [accountBookStructure show:boss];
    [accountBookStructure show:accounting];
    [boss getTotalConsumer];
    [boss getTotalIncome];
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
