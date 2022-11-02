/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## contains
Use contains to dtermine if an array contains an element or not.
*/
import Foundation

let numbers = [107, 86, 51, 74, 91, 184, 68]
/*:
 ### Single element use contains(element: )
 Ex. Does this array contain the value 74
 */
let number74 = numbers.contains(99)
/*:
 ### Checking where criteria ia not unique
 Ex.  Does the array contain a multiple of 7?
 */
/* Use Loop */
//var foundIt = false
//for number in numbers {
//    if number.isMultiple(of: 7) {
//        foundIt = true
//        break
//    }
//}
//foundIt
/* Use contains */
//var foundIt = numbers.contains { (number) -> Bool in
//    number.isMultiple(of: 7)
//}
//foundIt
/* Use shortcut argument */
var foundIt = numbers.contains { $0.isMultiple(of: 7) }
foundIt
/*:
Do any employees make less than minium wage? ($15/hr)
 */
/* Do any employees make < $15/hr */
struct Employee {
    var name: String
    var hourlyWage: Double
}
let employees = [
    Employee(name: "Mary", hourlyWage: 22.50),
    Employee(name: "Jack", hourlyWage: 17.50),
    Employee(name: "Sally", hourlyWage: 22.90),
    Employee(name: "Fred", hourlyWage: 12.50)
]
/* Use full expansion */
//let needsRaise = employees.contains { (employee) -> Bool in
//    employee.hourlyWage < 15
//}
//needsRaise
/* user shorthand arguments */
let needsRaise = employees.contains { $0.hourlyWage < 15 }
needsRaise
/*:
Contains and Dictionaries
 */
let employeeDict = ["Mary" : 22.50, "Jack": 17.50, "Sally": 22.90, "Fred":12.50]
/* Use full expansion */
//let employeeNeedRaise = employeeDict.contains { (employee) -> Bool in
//    employee.value < 15
//}
//employeeNeedRaise
let employeeNeedRaise = employeeDict.contains { $0.value < 15 }
employeeNeedRaise
/*:
Contains and Sets
 */
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/*  Find if any weight in he set exceeds 110. */
//let foundOverWeights = weights.contains { (weight) -> Bool in
//    weight > 110
//}
//foundOverWeights
/* Use shorthand */
let foundOverWeights = weights.contains { $0 > 110 }
foundOverWeights
/*:
 #### Contains and strings
 Does this sentence contain the word dog?
 */
let sentence = "The quick brown fox, jumped over the lazy Dog. And this is what he found"
/* Does the sentence contain 'dog'? */
let foundDog = sentence.lowercased().contains("dog")
foundDog
/* Does the sentence contain the word 'own' */
let foundOwn = sentence.lowercased().contains("own")
foundOwn
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
