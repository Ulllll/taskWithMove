
#import "ABCView.h"


@implementation ABCView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor redColor];
    }
    
    return self;
}
#pragma mark - UIResponder

float diffX;
float diffY;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint selfTouchPoint = [[touches anyObject] locationInView:self];
    diffX = selfTouchPoint.x;
    diffY = selfTouchPoint.y;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint toPoint = [touch locationInView:self];
    float xTarget = toPoint.x - diffX;
    float yTarget = toPoint.y - diffY;
    CGPoint newPoint = CGPointMake(self.frame.origin.x + xTarget, self.frame.origin.y + yTarget);

    
    [UIView animateWithDuration:0.5 animations:^{
        CGRect newFrame = self.frame;
        newFrame.origin = newPoint;
        self.frame = newFrame;
    }];
    
    diffX = toPoint.x;
    diffY = toPoint.y;
}





@end
