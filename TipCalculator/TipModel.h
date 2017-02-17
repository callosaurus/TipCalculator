//
//  Tip Model.h
//  TipCalculator
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TipModel : NSObject

@property (nonatomic) float billAmount;
@property (nonatomic) float tipPercentage;

-(float)calculateTipAmount;

@end
