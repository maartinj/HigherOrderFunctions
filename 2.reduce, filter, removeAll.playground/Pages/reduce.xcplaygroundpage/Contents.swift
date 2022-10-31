/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## reduce
Use reduce to combine all items in a collection to create a single new value
*/
import Foundation
/*:
Sum the total of numbers in an array of Integers
 */
let numbers = [1, 2, 3, 4, 5, 6]
/* Use Loop */
//var sum = 0
//for number in numbers {
//    sum += number
//}
//sum
/* Use reduce */
//let sum = numbers.reduce(0) { (currentSum, number) -> Int in
//    currentSum + number
//}
//sum
/* Reduce version */
//let sum = numbers.reduce(0) { $0 + $1 }
//sum
/* Reduce version 2 */
let sum = numbers.reduce(0,+)
/*:
Find the product of numbers in an array of Integers
 */
let product = numbers.reduce(1, *)
product
/*:
Find the sum of all integers in the following array of arrays
 */
let numberGroups = [[2, 6, 8, 10], [18, 5, 11], [5, 15, 8, 11,18]]
let groupSum = numberGroups.flatMap { $0 }.reduce(0, +)
groupSum
/*:
Sum the values of a double property of a struct
 */
/* Find the total amount of salary paid */
struct Employee {
    var name: String
    var salary: Double
}
let employees = [
    Employee(name: "Mary", salary: 100_110),
    Employee(name: "Jack", salary: 50_000),
    Employee(name: "Sally", salary: 75_500),
    Employee(name: "Fred", salary: 48_900)
]
/* Use full expansion */
//let totalSalary = employees.reduce(0) { (currentTotal, employee) -> Double in
//    currentTotal + employee.salary
//}
//totalSalary
/* user shorthand arguments */
let totalSalary = employees.reduce(0) { $0 + $1.salary }
totalSalary
/*:
Reduce and Dictionaries
 */
let employeeDict = ["Mary" : 100_000, "Jack": 50_000, "Sally": 75_500, "Fred":48_900]
/* Use full expansion */
//let salaryTotal = employeeDict.reduce(0) { (currentTotal, employeeTouple) -> Int in
//    currentTotal + employeeTouple.value
//}
//salaryTotal
/* use shorthand arguments */
let salaryTotal = employeeDict.reduce(0) { $0 + $1.value }
salaryTotal
/* reduce the dictionary to a string containing all names, separated by a space */
let names = employeeDict.reduce("") { $0 + $1.key + " " }
names
/*:
Reduce and Sets
 */
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/*  Find the sum of all weights in this set. */
let totalWeights = weights.reduce(0, +)
totalWeights

/* User Reduce to find the total of all weights over 100.0 */
//let heavyWeights = weights.reduce(0) { (currentTotal, weight) -> Double in
//    if weight > 100 {
//        return currentTotal + weight
//    } else {
//        return currentTotal
//    }
//}
//heavyWeights

/* Condense the body using a nil coallessor */
//let heavyWeights = weights.reduce(0) { (currentTotal, weight) -> Double in
//    weight > 100 ? (currentTotal + weight) : currentTotal
//}
//heavyWeights

/* Use shorthand arguments */
let heavyWeights = weights.reduce(0) { $1 > 100 ? ($0 + $1) : $0 }
heavyWeights
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
