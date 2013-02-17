//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Ryan Closner on 2/17/13.
//  Copyright (c) 2013 Ryan Closner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    double waitingOperand;
    NSString *waitingOperation;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
