/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## filter
Use filter to loop over a collection and return a collection containing only those elements that match an include condition.
 */
/*:
 #### Simple Arrays
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
/* Example 1: Filter this array to return another array of integers keeping only values that are less than or equal to 5
   Use for...in loop */
//var newNumbers: [Int] = []
//for number in numbers {
//    if number <= 5 {
//        newNumbers.append(number)
//    }
//}
//newNumbers
/* use Filter */
//let newNumbers = numbers.filter { (number) -> Bool in
//    number <= 5
//}
/* use shorthand */
//let newNumbers = numbers.filter { $0 <= 5 }
//newNumbers
/* Example 2: Filter this array to return another array of Strings beginning with the letter 'a' or 'A' */
let names = ["Alice", "Bert", "Allen", "Samantha", "Ted", "albert"]
let aNames = names.filter { $0.uppercased().prefix(1) == "A" }
aNames
/* Example 3: Find the First person who matches the conditions above */
let firstName = names.filter { $0.uppercased().prefix(1) == "A" }.first
firstName
/*:
#### Arrays of Objects
*/
struct Person {
    var name: String
    var age: Int
}
let people = [
    Person(name: "Curly", age: 16),
    Person(name: "Larry", age: 22),
    Person(name: "Moe", age: 12),
    Person(name: "Shemp", age: 25)
]
/* Example 1:  Get an array of people who are adults (age >= 19) */
let adults = people.filter { (person) -> Bool in
    person.age >= 19
}
adults
/* Example 2: Get an array of people who are older than 20 with names beginning with 'M' */
let specialPeople = people.filter {  $0.age > 20 && $0.name.prefix(1) == "L"}
specialPeople

/* Example 3: Get an array of names of children (age < 19)
   Hint: Combine filter with map */
let children = people.filter { $0.age < 19 }.map { $0.name }
children
/*:
#### Dictionaries
*/
let peopleDict = ["Curly": 16, "Larry": 22, "Moe": 12, "Shemp": 25]
/* Filter to return a dictionary where the values are >= 19 */
//let adultDict = peopleDict.filter { (person) -> Bool in
//    person.value >= 19
//}
//adultDict
/* Shorthand version */
let adultDict = peopleDict.filter { $0.value >= 19 }
adultDict
/*:
#### Sets
*/
let weights: Set = [98.5, 102.7, 100.2, 88.4]
/* Generate a set of weights where the values are < 100 */
let lightWeights = weights.filter { $0 < 100 }
lightWeights
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
