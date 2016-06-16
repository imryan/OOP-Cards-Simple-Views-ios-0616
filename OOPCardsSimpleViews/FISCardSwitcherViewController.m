//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
- (IBAction)cardSelected:(id)sender;

@end

@implementation FISCardSwitcherViewController

- (IBAction)cardSelected:(id)sender {
    UIButton *cardButton = (UIButton *)sender;
    self.topLabel.text = cardButton.titleLabel.text;
    self.middleLabel.text = cardButton.titleLabel.text;
    self.bottomLabel.text = cardButton.titleLabel.text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️" rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️" rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️" rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️" rank:@"10"];
}

@end
