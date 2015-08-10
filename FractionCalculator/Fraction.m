//
//  Fraction.m
//  FractionCalculator
//
//  Created by Lane on 8/10/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator,denominator;

-(void) setTo:(int)n over:(int)d
{
    numerator=n;
    denominator=d;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(double) convertToNum
{
    if(denominator!=0)
        return (double) numerator/denominator;
    else
        return NAN;
}

-(NSString *) converToString
{
    if(denominator!=0)
        if(numerator!=0)
            if (numerator==denominator)
                return @"1";
            else
                return [NSString stringWithFormat:@"%i/%i",numerator,denominator];
        else
            return @"0";
    else
        return @"NAN";
        
}

-(Fraction *) add:(Fraction *)f
{
    //add fraction
    //a/b+c/d=((a*d)+(b*c))/(b*d)
    
    Fraction *result=[[Fraction alloc] init];
    
    result.numerator=numerator*f.denominator+denominator*f.numerator;
    result.denominator=denominator*f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) subtract:(Fraction *)f
{
    //a/b-c/d=((a*d)-(b*c))/(b*d)
    Fraction *result=[[Fraction alloc] init];
    
    result.numerator=numerator*f.denominator-denominator*f.numerator;
    result.denominator=denominator*f.denominator;
    
    [result reduce];
    return result;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result=[[Fraction alloc] init];
    
    result.numerator=numerator*f.numerator;
    result.denominator=denominator*f.denominator;
    
    return result;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *result=[[Fraction alloc] init];
    
    result.numerator=numerator*f.denominator;
    result.denominator=denominator*f.numerator;
    
    return result;
}

-(void) reduce
{
    int u=numerator;
    int v=denominator;
    int temp;
    
    if (u==0) {
        return;
    }
    else if(u<0)
        u=-u;
    
    while (v!=0) {
        temp=u%v;
        u=v;
        v=temp;
    }
    
    numerator/=u;
    denominator/=u;
}

@end
