//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Ryan Closner on 2/17/13.
//  Copyright (c) 2013 Ryan Closner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;

@end
