import UIKit
//: Check if two string are permutation of each other? like String1:- abcd amd String2:- dcab print yes if true else no
let pString1 = "abcd"
let pString2 = "acbd"

if pString1.count != pString2.count {
    print("No permutation")
}
let findIsPermutation = Array(pString1).map { pString2.contains($0) }
print(findIsPermutation.contains(false) ? "No" : "Yes")
//: A Text is encoded by shigting every character by 3 digit backwards for a -> x, b -> y etc decrypt the input and return the output
let abc = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let indexOFa = abc.firstIndex(of: "c".lowercased())
let num = indexOFa! + 23
abc[num >= 26 ? num - 26 : num]
/*:
 ### Best Way I think
 */
let valueOFA = Character("c".lowercased()).asciiValue
let FindChrValue = valueOFA! - 3
let val = FindChrValue < 97 ? FindChrValue + 26 : FindChrValue
let value = Character(Unicode.Scalar(val))
//: Ques :- Find the hcf(Higest common factor) from array of intiger like [10,15,20,25,35] and given size of array like 5
var array1 = [10,15,20,25,35,50]
var comonFeaterFind = false
var comonFeacter = 2
while comonFeaterFind != true {
    let comonFeacterArray = array1.map { $0 % comonFeacter == 0 }
    comonFeacterArray
    if comonFeacterArray.contains(false) {
        comonFeacter += 1
    } else {
        comonFeaterFind = true
    }
}
comonFeacter
//: PerFect Way to find HCF
var array = [2,9,16]
array = array.sorted(by: <)
var diffArray = [Int]()
for (index, val) in array.enumerated() {
    if index + 1 != array.count {
        diffArray.append(array[index + 1] - val)
    }
}
diffArray = diffArray.sorted(by: <)
if array[0] % diffArray[0] == 0 {
    print("H C F :- \(diffArray[0])")
} else {
    print("Not H C F Find")
}
//: Reverse the string without changing the special characters positions
var string = "ab$c^*&^f@fds"
func reversedString(str: String) -> String {
    var array1 = Array(str)
    var arrCount = array1.count - 1
    for (index, val) in array1.enumerated() {
        if index >= arrCount {
            break
        } else {
            let asciiValues = 97...123
            if asciiValues.contains(Int(val.asciiValue ?? 0)) {
                while !asciiValues.contains(Int(array1[arrCount].asciiValue ?? 0)) {
                    arrCount -= 1
                }
                array1.swapAt(index, arrCount)
                arrCount -= 1
            }
        }
    }
    return String(array1)
}
reversedString(str: string)
//: Print First tem prime numbers
var primeNumberArray = [2,3]
var number = 4
while primeNumberArray.count < 10 {
    let num = Int(number / 2)
    var isprime = true
    for i in 2...num {
        if number % i == 0 && isprime {
            isprime = !isprime
        }
    }
    if isprime {
        primeNumberArray.append(number)
    }
    number += 1
}
primeNumberArray
//: Find Second largest number
var largest = 0
var secondLargest = 0
var arrayNew = [4,6,7,4,3,2,6,8,1,5,7,9,2,1]
for val in arrayNew {
    if val > largest {
        secondLargest = largest
        largest = val
    }
}
largest
secondLargest
// Clousers
//////var closure: ((Int) -> Double)?
//////
//////typealias ClosureType = (Int) -> Double
////
//: Swap two value without using third value
var a = 10
var b = 7
a = a+b
b = a-b
a = a-b
a
b

//: WAP if enter 12 then retun 10 or enter 10 then retun 12
func getsecondNo(number: Int) -> Int {
    return (12*10) / number
//    (12 + 10) - number
}
let changedNumber = getsecondNo(number: 12)
//: Shot Array
var unShotedArray = [1,5,7,4,3,6,2,8,4]
//: Sorted by predefined Clouser
unShotedArray = unShotedArray.sorted(by: <)
//: Short with 2 loops
for i in 0..<unShotedArray.count {
    for j in i..<unShotedArray.count {
        if unShotedArray[i] > unShotedArray[j] {
            //Swap without alloc any other object
            unShotedArray[i] = unShotedArray[i] + unShotedArray[j]
            unShotedArray[j] = unShotedArray[i] - unShotedArray[j]
            unShotedArray[i] = unShotedArray[i] - unShotedArray[j]
            //Swap from Pre Function
//            unShotedArray.swapAt(i, j)
        }
    }
}
unShotedArray
//: Short in single loop
var i = 0
while i < unShotedArray.count {
    if i+1 != unShotedArray.count {
        if unShotedArray[i] > unShotedArray[i + 1] {
            unShotedArray.swapAt(i, i + 1)
            i = 0
        }
    }
    i += 1
}
unShotedArray
/*:
 # IV Ques Ans
*/
class A {
    var str: String
    init(Stng : String) {
        str = Stng
    }
}
class B {
    let textField = UITextField()
    init() {
        let a = A(Stng: "Karan")
        textField.text = a.str
        print(textField.text!)
    }
}
print(B.init().textField.text!)
/*:
 ## MARK:- Class and Struct
*/
class person: NSObject, NSCopying {
    var name: String
    init(name : String) {
        self.name = name
    }
    func copy(with zone: NSZone? = nil) -> Any {
        let new = person(name: name)
        return new
    }
}
let person1 = person(name: "Dheeraj")
let person2 = person1.copy() as! person
let person3 = person1
person3.name = "iOS"

person1.name
person2.name
person3.name

struct car {
    var noOfwindow : String

    init(noOfwindow: String) {
        self.noOfwindow = noOfwindow
    }
}

let car1 = car.init(noOfwindow: "4")
var car2 = car1
car2.noOfwindow = "5"

car1.noOfwindow
car2.noOfwindow

struct new: Codable {
    let name : String
    let lastName : String
}
/*:
 # Closures
 */
//let array = [1,2,3,4,5,6,7,8,9,10]
//let short = array.filter({ $0 <= 5 }) //find less than 5
//let short = array.map({ $0 * 2 }) //Multiply all element
//let short = array.reduce(0) {$0 + $1} // Add All object in array

//let array = [[1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10]]
//let short = array.compactMap{ $0.map{ $0 * 2} }
//let short = array.flatMap{ $0.map{ $0 * 5 } }
//let short = array.flatMap({ $0.filter({ $0 % 2 == 0 })})
//let short = array.compactMap({ $0.reduce(0, +)})
//let short = array.flatMap { $0.reduce(0) { $0 + $1 } }
/*:
 # Generic Function
 */
func compareTwoValues<T: Equatable>(_ value1: T ,_ value2: T) -> Bool {
    return value1 == value2
}

//func addTwoValues<T: Element>(_ value: T,_ value2: T) -> Element {
//    return value + value2
//}

func removeValueFromArray<T: Equatable>(_ valueWantToRemove: T, array: inout [T]) -> [T] {
    for (index, value) in array.enumerated() {
        if value == valueWantToRemove {
            array.remove(at: index)
            return array
        }
    }
    return array
}

var arrayInt = [1,2,3,4,5,6,7,8,9]
let arrWithoutFive = removeValueFromArray(5, array: &arrayInt)
arrWithoutFive

var strArray = ["abc","def","ghi","jkl","mno","pqr","stu","vwx","yz"]
strArray = removeValueFromArray("ghi", array: &strArray)
strArray = removeValueFromArray("pqr", array: &strArray)
/*:
 ## Generic Stack
 */
struct list<T: Equatable> {
    var array: [T]

    mutating func push(item: T) {
        return array.append(item)
    }

    mutating func pop(item: T) {
        for (index, value) in array.enumerated() {
            if value == item {
                array.remove(at: index)
                return
            }
        }
    }
}

var lists = list(array: [5])
lists.push(item: 6)
lists.push(item: 7)
lists.push(item: 6)
lists.push(item: 9)
lists.push(item: 10)
lists.array
lists.pop(item: 6)
lists.array

var list2 = list(array: ["str"])
list2.push(item: "Name")
list2.pop(item: "stri")
list2.array
//: Get Hour and Second From Date
let date = Date()
let calendar = Calendar.current
let hour = calendar.component(.hour, from: date)
let second = calendar.component(.second, from: date)

