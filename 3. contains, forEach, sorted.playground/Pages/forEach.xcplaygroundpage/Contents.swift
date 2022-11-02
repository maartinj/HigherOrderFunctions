/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## forEach
Similar to a for...in loop, only it isn't a loop.
 */
/*:
 #### Simple Arrays
 */
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
/* Example 1: step through each element of the array to determine which ones are even */
/* use for in loop */
//for number in numbers {
//    if number.isMultiple(of: 2) {
//        print("\(number) is even")
//    } else {
//        print("\(number) is odd")
//    }
//}
/* use forEach */
//numbers.forEach { (number) in
//    if number.isMultiple(of: 2) {
//        print("\(number) is even")
//    } else {
//        print("\(number) is odd")
//    }
//}
/* use shortcut and nil coalescing operator */
numbers.forEach { $0.isMultiple(of: 2) ? print("\($0) is even") : print("\($0) is odd") }
/* Loop through the array and print out the squares of each number
   use a guard statement. */
let numbers2 = [1, 2, nil, 5, 6, nil, 7, 8, 9, nil]
/* use for in loop an */
//for number in numbers2 {
//    guard let number = number else {
//        continue
//    }
//    print("\(number) squared is \(number * number)")
//}
/* use forEach */
//numbers2.forEach { (number) in
//    guard let number = number else {
//        return
//    }
//    print("\(number) squared is \(number * number)")
//}
/* Using the index for an array
 print the index and all nil numbers in the numbers2 array */
/* 1. Use for...in loop and guard */
//for (index, number) in numbers2.enumerated() {
//    guard let _ = number else {
//        print("Item \(index) is nil")
//        continue
//    }
//}
/* 2. Use forEach and guard */
numbers2.enumerated().forEach { (index, number) in
    guard let _ = number else {
        print("Item \(index) is nil")
        return
    }
}
/* 3. Use shorthand */
numbers2.enumerated().forEach { guard let _ = $1 else { print("Item \($0) is nil"); return } }
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
