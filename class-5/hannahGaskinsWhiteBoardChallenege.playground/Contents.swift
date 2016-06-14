//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Give an array of million words, write a function to return all palindromes.


var palArray = ["hannah", "two", "racecar", "hi", "tacocat"]


//  1. go through each item in the array and
//  1.b check if it is in fact a palindrome
//  2. if it is a palin print it



func palindromeReturn(array: [String]) -> [String] {
    var palidromeList = [String]()
    for word in palArray {
        var newStringInArray = ""
        for i in word.characters {
            newStringInArray = "\(i)" + newStringInArray
        }
        
        if word == newStringInArray {
            print(word)
            palidromeList.append(word)
        }
    }
    return palidromeList
}

palindromeReturn(palArray)


// Convert base 10 to base 16 numbers

// 1. dictionary holding the base10 base16 pairs
// 2. function computing math (number/16 with remainder) 
// 2.b function also using our dictionary to convert division outcome into base16
// 3. return this base16 outcome value

var conversionDict = [10 : "A", 11 : "B", 12 : "C", 13 : "D", 14 : "E", 15 : "F"]


func convertToHex (baseTen: Int) -> String {
    
    let primaryNum = baseTen / 16
    let remainder = baseTen % 16
    var base16 = ""
    
    if primaryNum <= 15 {
        base16 = "\(remainder)"
    } else {
        base16 = "\(primaryNum)\(remainder)"
    }
    
    var hexRemainder = String()
    
    var result = String()
    
    if remainder > 9 {
        hexRemainder = conversionDict[remainder]!  // TODO FIX
        result =  "\(primaryNum) \(hexRemainder)"
    } else {
        result = base16
    }
    
    return result
}


var test = 31/16
var testTwo = 31%16

var baseSixteen = "0x\(test)\(testTwo) "




convertToHex(1)
convertToHex(2)
convertToHex(3)
convertToHex(4)
convertToHex(5)
convertToHex(6)
convertToHex(7)
convertToHex(8)
convertToHex(9)
convertToHex(10)
convertToHex(11)
convertToHex(12)
convertToHex(13)
convertToHex(14)
convertToHex(15)
convertToHex(16)
convertToHex(17)
convertToHex(20)
convertToHex(60)
convertToHex(66)
convertToHex(64)











