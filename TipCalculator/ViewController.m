//
//  ViewController.m
//  TipCalculator
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ViewController.h"
#import "TipModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (strong, nonatomic) TipModel *tipModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tipModel = [TipModel new];
    
    
}


- (IBAction)calculateTip:(id)sender {
    self.tipModel.billAmount = [self.billAmountTextField.text floatValue];
    self.tipModel.tipPercentage = [self.tipPercentageTextField.text floatValue];
//    float newTipAmount = ([self.billAmountTextField.text floatValue] * ([self.tipPercentageTextField.text floatValue]/100));
    float newTipAmount = [self.tipModel calculateTipAmount];
    NSString *newTipAsString = [NSString stringWithFormat:@"$%0.2f", newTipAmount];
    self.tipAmountLabel.text = newTipAsString;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
