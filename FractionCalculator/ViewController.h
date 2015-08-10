//
//  ViewController.h
//  FractionCalculator
//
//  Created by Lane on 8/10/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UILabel *display;

-(void) processDigit:(int) digit;
-(void) processOp:(char) theOp;
-(void) storeFracPart;

//number buttons

-(IBAction) clickDigit:(UIButton *) sender;

//op buttons
-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMultiply;
-(IBAction) clickDivide;

//misa buttons
-(IBAction) clickOver;
-(IBAction) clickEquals;
-(IBAction) clickClear;

@end

