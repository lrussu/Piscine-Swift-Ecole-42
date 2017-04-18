//
//  CalculatorBrain.swift
//  D00
//
//  Created by Liudmila Russu on 4/17/17.
//  Copyright © 2017 Liudmila Russu. All rights reserved.
//

import Foundation

class CalculatorBrain
{

    private var accumulator = 0.0
    
    func setOperand(operand: Double!)
    {
        accumulator = operand
    }
    
    private var operations: Dictionary<String, OperationType> = [
        "AC" : OperationType.Reset({0}),
        "NEG": OperationType.UnaryOperation({-$0}),
        "+"  : OperationType.BinaryOperation({$0 + $1}),
        "×"  : OperationType.BinaryOperation({$0 * $1}),
        "-"  : OperationType.BinaryOperation({$0 - $1}),
        "/"  : OperationType.BinaryOperation({$0 / $1}),
        "="  : OperationType.Equals
    ]
    
    private enum OperationType
    {
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
        case Reset(() -> Double)
    }
    
    func performOperation(symbol: String)
    {
        if let operation = operations[symbol]
        {
            switch operation
            {
                case .UnaryOperation(let function): accumulator = function(accumulator)
                case .BinaryOperation(let function):
                    executeWaitingBinaryOpearation()
                        waitingEqual = WaitingBinaryOperationEqual(binaryFunction: function, firstOperand: accumulator)
                case .Equals:
                    executeWaitingBinaryOpearation()
                case .Reset:
                    accumulator = 0
                    waitingEqual = nil
            }
        }
    }

    private var waitingEqual: WaitingBinaryOperationEqual!
    
    private struct WaitingBinaryOperationEqual
    {
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double!
    }
    
    private func executeWaitingBinaryOpearation()
    {
        if waitingEqual != nil
        {
            accumulator = waitingEqual!.binaryFunction(waitingEqual!.firstOperand, accumulator)
            waitingEqual = nil
        }
    }
    
    var result: Double
    {
        get {
            return accumulator
        }
    }
}
