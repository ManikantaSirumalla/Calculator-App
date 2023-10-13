//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Manikanta Sirumalla on 02/11/22.
//

import Foundation
import SwiftUI

enum keys : String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "÷"
    case equal = "="
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    case clear = "AC"
    
    
    var buttonColor: Color {
        switch self {
        case .add,.subtract,.multiply,.divide,.equal:
            return Color("Voperator")
        case .clear,.negative,.percent:
            return Color("Hoperator")
        default:
            return Color("numKeys")
        }
    }
    
}

enum Operations {
    case add, subtract, multiply, divide, none
}
