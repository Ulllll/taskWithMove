

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad {// вызывается один раз для отрисовки
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  // [self createUI];
   [self createABCView];
    
}


#pragma mark - UI

-(void)createABCView
{
    ABCView *someView = [[ABCView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    someView.center = self.view.center;
    [self.view addSubview:someView];
    someView.backgroundColor = [UIColor orangeColor];
}


- (void)createUI
{
    UIView *someView = [[UIView alloc] initWithFrame:CGRectMake(100, 140, viewSize, viewSize)];
    someView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:someView];
}


#pragma mark - UIResponder




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewDidAppear:(BOOL)animated{ что то по типу повторного вызова vieDidLoad у объекта, который уже чуществует
 //   [super viewDidAppear:animated];
//}


@end
