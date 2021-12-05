//
//  Factorial.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-04
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program calculates factorials through recursion.
//

import Foundation

// Calculates factorial through recursion
func factorial(input: Int) -> Int {

    if input == 0 {
        return 1
    } else {
        return input * factorial(input: input - 1)
    }
}

// Input
print("This program calculates factorials.")
print("Enter an integer: ", terminator: "")

// Validates user input
guard let inputString = readLine(), !inputString.isEmpty else {
    print("Invalid input.")
    print("\nDone.")
    exit(001)
}

// Output
if let input = Int(inputString) {
    let factorialValue = factorial(input: input)
    print("\(input)! = \(factorialValue)")
} else {
  print("Invalid input.")
  }

print("\nDone.")
