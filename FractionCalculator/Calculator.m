//
//  Calculator.m
//  FractionCalculator
//
//  Created by Lane on 8/10/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
@synthesize operand1,operand2,accumulator;

-(id) init
{
    self=[super init];
    if (self) {
        operand1=[[Fraction alloc] init];
        operand2=[[Fraction alloc] init];
        accumulator=[[Fraction alloc] init];
    }
    return self;
}

-(void) clear
{
    accumulator.numerator=0;
    accumulator.denominator=0;
}

-(Fraction *) performaOperation:(char)op
{
    Fraction *result;
    
    switch (op) {
        case '+':
            return [operand1 add:operand2];
            break;
        case '-':
            return [operand1 subtract:operand2];
            break;
        case '*':
            return [operand1 multiply:operand2];
            break;
        case '/':
            return [operand1 divide:operand2];
            break;
    }
    
    accumulator.numerator=result.numerator;
    accumulator.denominator=result.denominator;
    return result;
}
@end
