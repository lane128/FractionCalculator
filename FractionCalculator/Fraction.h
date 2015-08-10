//
//  Fraction.h
//  FractionCalculator
//
//  Created by Lane on 8/10/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(Fraction *) add:(Fraction *) f;
-(Fraction *) subtract:(Fraction *) f;
-(Fraction *) multiply:(Fraction *) f;
-(Fraction *) divide:(Fraction *) f;
-(void) reduce;
-(double) convertToNum;
-(NSString *) converToString;

@end
