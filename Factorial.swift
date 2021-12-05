//
//  Factorial.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-01
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program calculates factorials through recursion.
//

import Foundation

// Returns a factorial via recursion
func factorial(input: Int) -> Int {

    if input == 0 {
        return 1
    } else {
        return input * factorial(input: input - 1)
    }
}

// Captures user input, feeds it to factorial() and outputs the reversed string
print("This program calculates factorials.")
print("Enter an integer: ", terminator: "")

guard let inputString = readLine(), !inputString.isEmpty else {
    print("Invalid input.")
    print("\nDone.")
    exit(001)
}

if let input = Int(inputString) {
    let factorialValue = factorial(input: input)
    print("\(input)! = \(factorialValue)")
} else {
  print("Invalid input.")
  }

print("\nDone.")
