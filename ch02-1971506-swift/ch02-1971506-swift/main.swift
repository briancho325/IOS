//
//  main.swift
//  ch02-1971506-swift
//
//  Created by 조현석 on 2022/03/13.
//

import Foundation

var myVariable = 42
myVariable += 42

var yourVariable = 42
//yourVariable += 42
print(myVariable)
print(yourVariable)

let implicitInteger = 70
let implicitDouble = 70.5
let explicitDouble: Double = 70

let explicitFloat: Float = 4

let label = "The width is"
let width = 94
let widthLabel = label + String(width)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples)apples"
let fruitSummary = "I have \(Double(apples) + Double(oranges)/2.0) pieces of fruits"

