//
//  Calculator.h
//  FractionCalculator
//
//  Created by Lane on 8/10/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Calculator : NSObject
@property (strong,nonatomic) Fraction *operand1;
@property (strong,nonatomic) Fraction *operand2;
@property (strong,nonatomic) Fraction *accumulator;

-(Fraction *) performaOperation: (char) op;
-(void) clear;
@end
