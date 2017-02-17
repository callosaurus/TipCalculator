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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)calculateTip:(id)sender {
    float newTipAmount = ([self.billAmountTextField.text floatValue] * 0.15);
    NSString *newTipAsString = [NSString stringWithFormat:@"%0.2f", newTipAmount];
    self.tipAmountLabel.text = newTipAsString;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
