//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation


var lowerlimit = 0
while true {
    print("Enter lower limit of range")
    guard let lowertest = readLine() else {
        continue
    }
    
    guard let lowerInput = Int(lowertest) else {
        continue
    }
    
    if lowerInput > 1000 || lowerInput < 1 {
        continue
    }
    
    lowerlimit = lowerInput
    break
}

var upperlimit = 0
while true {
    print("Enter upper limit of range")
    guard let uppertest = readLine() else {
        continue
    }
    
    guard let upperInput = Int(uppertest) else {
        continue
    }
    
    if upperInput > 1000 || upperInput < 1 {
        continue
    }
    
    upperlimit = upperInput
    break
}

if lowerlimit > upperlimit {
    print("Error: lower limit cannot be bigger than upper limit.")
    exit(9)
}

var numberOfDivisors = 0
var amountRSA = 0
for N in lowerlimit...upperlimit {
    
    for i in 1...upperlimit {
        if N % i == 0 {
            numberOfDivisors += 1
            }
        }
    if numberOfDivisors == 4 {
        amountRSA += 1
    }
    numberOfDivisors = 0
}

print("The number of RSA between \(lowerlimit) and \(upperlimit) is \(amountRSA)")

























//
//func checkValidInput(input: String?) -> Bool {
//
//    guard let givenNumber : Int = Int(input!) else {
//        return false
//    }
//
//    if Int(givenNumber) > 1000 || Int(givenNumber) < 1 {
//        return false
//    }
//
//   return true
//
//}



//var upperLimit = 0
//
//while true{
//    let upperLimitTest = readLine()
//    if checkValidInput(input: upperLimitTest) == true {
//        upperLimit = Int(upperLimitTest)!
//        break
//    }
//    continue
//}
//
//var lowerLimit = 0
//
//while true {
//    let lowerLimitTest = readLine()
//    if checkValidInput(input: lowerLimitTest) == true {
//        lowerLimit = Int(lowerLimitTest)!
//        break
//    }
//    continue
//}
