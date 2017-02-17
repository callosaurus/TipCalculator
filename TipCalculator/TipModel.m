//
//  Tip Model.m
//  TipCalculator
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "TipModel.h"

@implementation TipModel

-(float)calculateTipAmount
{
    return (self.billAmount * (self.tipPercentage /100));
}


@end
