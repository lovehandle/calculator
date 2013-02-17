//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Ryan Closner on 2/17/13.
//  Copyright (c) 2013 Ryan Closner. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void)setOperand:(double)aDouble
{
    operand = aDouble;
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"√"]) {
        operand = sqrt(operand);
    } else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

- (void)performWaitingOperation
{
    if ([waitingOperation isEqual:@"x"]) {
        operand = waitingOperand * operand;
    } else if ([waitingOperation isEqual:@"/"]) {
        if (operand) {
            operand = waitingOperand / operand;
        }
    } else if ([waitingOperation isEqual:@"+"]) {
        operand = waitingOperand + operand;
    } else if ([waitingOperation isEqual:@"-"]) {
        operand = waitingOperand - operand;
    }

}

@end
