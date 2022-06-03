//import Foundation
//
//var str = readLine() ?? "No value"
//var str2 = str.trimmingCharacters(in: .whitespacesAndNewlines)

import Darwin

////var str2 = str.replacingOccurrences(of: "88", with: "989")
//print("String value : \(str2)")
//var intVal = Int(str2) ?? 0
//print("Integer value : \(intVal)")

//var str = "!="
//print(str[str.index(str.startIndex, offsetBy: 1)])
//func method(_ sf: inout String)
//{
//    sf += " World !"
//}
//var param = "Hello"
//method(&param)
//print(param)



//var odd : Array<Int> = [1,3,5]
//var even : [Int] = [2,4,6]
//for i in 0...2
//{
//    print(odd[i], even[i], separator: ", ", terminator: ", ")
//}

//var hellos = Array<String>(repeating: "hello", count: 5)
//print(hellos)

//var intOpt: Int? = nil
//var anyArray: [Any] = [1, "Hello", 4.5, true]
//print(anyArray)
//anyArray[4] = 5 // datatype of intOpt becomes Int
//print(anyArray[4])
//for x in anyArray
//{
//    print(type(of: x), separator: ", ", terminator: ", ")
//}

//let valueRepo: [(Int, String)] = [(5, "Kris"), (6, "Shiv")]
//var tupOpt: (Int, String)? = nil
//print(type(of: tupOpt))
//var shouldContinue = true
//while shouldContinue
//{
//switch tupOpt
//{
//case .none:
//    print("Found nil ! Assigning value...")
//    tupOpt = valueRepo.randomElement()
//    // fallthrough can't be used here as swift compiler doesn't allow to fallthrough nil case. hence shouldContinue boolean is used
//case .some(let (age, name)):
//    print("\(name) is a \(age) year old boy")
//    shouldContinue = false
//}
//}

//var boolOpt: Bool? = true
//if case .some(let val) = boolOpt
//{
//    print(type(of: val))
//    print(val)
//}
//boolOpt = nil
//if case .none = boolOpt
//{
//    print("nil")
//}
//var a: Int? = 1, b: Int? = 8, c: Int? = 5, d: String? = "Hello"
//var innerTup1: (a: Int?, b: Int?, c: Int?)? = (a, b, c)
//var innerTup2: (c: Int?, d: String?)? = (c, d)
//var outerTup: (one: (a: Int?, b: Int?, c: Int?)?, two: (c: Int?, d: String?)?)? = (innerTup1, innerTup2)
//print(outerTup?.one?.b?.isMultiple(of: 4))
//outerTup?.two = nil
//print(outerTup?.two?.d)

//typealias Rectangle = (length: Int, breadth: Int)
//let rect1 = Rectangle(length: 4, breadth: 3)
//let rect2 = Rectangle(length: 8, breadth: 7)
//let rect3 = Rectangle(length: 10, breadth: 4)
//let rectangles: [Rectangle] = [rect1, rect2, rect3]
//for i in rectangles.indices
//{
//    print("The area of rectangle with length: \(rectangles[i].length) and breadth: \(rectangles[i].breadth) is: \(rectangles[i].length * rectangles[i].breadth)")
//}

//var intArray = [1, 3, 4, 5, 7, 8, 9]
//print("Original array: \(intArray)")
//intArray.insert(2, at: 1) // Insert element at given index
//intArray.insert(6, at: 5) // Insert element at given index
//print("Array after inserting elements: \(intArray)")
//intArray.append(10) // Append element at last index
//print("Array after appending element at last: \(intArray)")
//print("Number of elements in array: \(intArray.count)")
//intArray.shuffle() // Randomly shuffle the elements of array
//print("Array after shuffling elements: \(intArray)")
//intArray.swapAt(2, 4)
//print("Array after swapping indices 2 and 4: \(intArray)")
//print("Random element from array: \(intArray.randomElement()!)") // Get a random element from array
//intArray.sort{ $0 > $1 }
//print("Sorting array in descending order: \(intArray)")
//intArray.reverse()
//print("Getting Original array by reversing the array: \(intArray)")
//var evenArray = intArray.filter{ $0.isMultiple(of: 2) } // Filter the elements of array based on a given predicate
//print("Filtered array with only even elements: \(evenArray)")
//evenArray.removeLast() // Remove the last element of array
//print("Even array after removing last element: \(evenArray)")
//print("Does even array contain element 4 ? \(evenArray.contains(4))")
//evenArray.removeAll() // Remove all elements from Even Array
//print("Is Even Array empty ? \(evenArray.isEmpty)") // Check if even array is empty

////Call by reference for Struct
//struct Student
//{
//    var rollNo: Int
//
//    init(_ rollNo: Int)
//    {
//        self.rollNo = rollNo
//    }
//}
//
//func modifyStudent(_ student: UnsafeMutablePointer<Student>,_ rollNo: Int)
//{
//    student.pointee.rollNo = rollNo
//}
//
//func modifyStudent2(_ student: inout Student, _ rollNo: Int)
//{
//    student.rollNo = rollNo
//}
//
//var student = Student(1)
//print("Original Student: \(student)")
//modifyStudent(&student, 3)
//print("Student after changing value using UnsafeMutablePointer: \(student)")
//modifyStudent2(&student, 5)
//print("Student after changing value using inout keyword in function: \(student)")
//print(student)

////Call by reference by default for classes
//class Student : CustomStringConvertible
//{
//    var description: String
//    {
//        get
//        {
//            "Student (rollNo: \(self.rollNo))"
//        }
//    }
//
//    var rollNo: Int
//
//    init(_ rollNo: Int)
//    {
//        self.rollNo = rollNo
//    }
//
//    deinit
//    {
//        print("Student disposed")
//    }
//}
//
//func modifyStudent(_ student: Student, _ rollNo: Int)
//{
//    student.rollNo = rollNo
//}
//var student = Student(2)
//print(student)
//modifyStudent(student, 4)
//print(student)


//// Function to find memory address of variable
//func address(_ of: UnsafeRawPointer) -> Int
//{
//    return Int(bitPattern: of)
//}
//
//var arr1 = [1,3,4]
//var arr2 = arr1
//
//print("Before modifying arr2:")
//print("Address of arr1: \(address(arr1))")
//print("Address of arr2: \(address(arr2))")
//
//arr2[2] = 5
//
//print("After modifying arr2:")
//print("Address of arr1: \(address(arr1))")
//print("Address of arr2: \(address(arr2))")

//var uniqueSet: Set<Int> = Set<Int>()
//for i in 1...10
//{
//    uniqueSet.insert(i)
//}
//print(uniqueSet)
//for i in 5...15
//{
//    uniqueSet.insert(i)
//}
//print(uniqueSet)

//var charSet: Set<Character> = ["A", "B", "C", "D", "E", "F"]
//for c in charSet
//{
//    print(c, terminator: " -> ")
//}
//print()
//for c in charSet.sorted(by: >)
//{
//    print(c, terminator: " -> ")
//}

//var evenSet: Set = [2, 4, 6, 8, 10, 12]
//print("Original Set: \(evenSet)")
//evenSet.insert(4)
//evenSet.insert(13) // Insert element into Set if it doesn't exist
//evenSet.insert(20)
//evenSet.insert(21)
//print("Set after inserting elements: \(evenSet)")
//evenSet.remove(21) // Remove given element from Set if it exists
//evenSet.remove(13)
//print("Set after removing elements: \(evenSet)")
//print("Does set have element 8 ? \(evenSet.contains(8))")// Returns true if given element is present
//print("Sorted View of Set: \(evenSet.sorted())") // Returns a sorted array using elements of set
//print("Random element of Set: \(evenSet.randomElement()!)") //Random element from Set
//evenSet.removeAll() // Remove all elements from Set
//print("Length of Set after removing elements: \(evenSet.count)")

//var anySet: Set<AnyHashable> = [1, "Hello", true, "World", 6.5]
//anySet.insert(8.9)
//anySet.forEach { element in
//    print(element)
//}

//let set1: Set = [1, 2, 3, 5]
//let set2: Set = [1, 8, 9, 5]
//print("Set 1: \(set1)")
//print("Set 2: \(set2)")
//let subtraction1 = set1.subtracting(set2)
//let subtraction2 = set2.subtracting(set1)
//let sub1Usub2 = subtraction1.union(subtraction2)
//let symmetricDifference = set1.symmetricDifference(set2)
//print("Symmetric Difference of two sets: \(symmetricDifference)")
//print("Are Symmetric Difference and Union of A - B and B - A the same ? \(sub1Usub2 == symmetricDifference)")
 
//let set1: Set = [1, 2, 3, 4, 5, 6, 7, 8]
//let set2: Set = [2, 4, 6, 8]
//print("Set 1: \(set1)")
//print("Set 2: \(set2)")
//print("Is Set 2 a subset of Set 1 ? \(set2.isSubset(of: set1))")

//var twoDAry : Array<[Int]> = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//print(twoDAry)
//print(type(of: twoDAry))
//print("Iterating using for-in loop")
//for x in twoDAry
//{
//    for y in x
//    {
//        print(y, terminator: ", ")
//    }
//}
//print("\nIterating using while loop")
//var i: Int = twoDAry.startIndex
//while(i < twoDAry.endIndex)
//{
//    var j: Int = twoDAry[i].startIndex
//    while(j < twoDAry[i].endIndex)
//    {
//        print(twoDAry[i][j], terminator: ", ")
//        j += 1
//    }
//    i += 1
//}

//var dict = [1 : "One", 2 : "Two", 3 : "Three", 4 : "Four"]
//print(dict)
//print(type(of: dict))
//dict[3] = nil //Remove 3 : "Three" from dict
//print(dict)
//print("4 in words is: \(dict[4]!)")
//print(dict[5,default:"Word Representation not present"])

//let even = "EVEN", odd = "ODD"
//var evenOdd : [Int : String] = [2 : even, 3 : even, 9 : odd, 10 : even]
//print("Original Dictionary: \(evenOdd)")
//evenOdd[3] = odd // Modifying value of key
//print("Modified Dictionary: \(evenOdd)")
//evenOdd[19] = even // Adding new key-value pair
//evenOdd[22] = odd // Adding new key-value pair
//print("Modified Dictionary: \(evenOdd)")
//evenOdd[19] = nil // Removing key-value pair from Dictionary
//evenOdd.removeValue(forKey: 22) // Removing key-value pair from Dictionary
//print("Modified Dictionary: \(evenOdd)")
//print("Keys of Dictionary in sorted order: \(evenOdd.keys.sorted())") //Access all keys
//print("Values of Dictionary: \(evenOdd.values)") // Access all values
//print("Key-Value pairs sorted in descending order of Keys: \(evenOdd.sorted(by: >))") // Access all pairs in descending order of keys
//print("Shuffled Dictionary: \(evenOdd.shuffled())") // Shuffle key-value pairs of dictionary
//let is11Present = evenOdd.contains { k,v in //Checking presence of key:value pair using contains method
//    return k==11 && v==odd
//}
//print("Is 11 : \"ODD\" present in Dictionary ? \(is11Present)")
//print("Number of elements in Dictionary: \(evenOdd.count)")

//var anyDict: [AnyHashable : Any] = ["Dummy" : 1, 1.5 : 4, 9.8 : true, false : "Hello"]
//print(anyDict)
//print(type(of: anyDict))
//for x in anyDict.keys
//{
//    print("\(x) : \(anyDict[x]!)")
//}

//func greet(name: String, from native: String)
//{
//    print("Hello \(name) ! Nice to know that you are from \(native) !")
//}
//greet(name: "Kris", from: "Chennai")

//func sum(_ numbers: [Int])
//{
//    var s = 0
//    for x in numbers
//    {
//        s += x
//    }
//    print("Sum of passed Numbers is: \(s)")
//}
//sum([1, 2, 4, 10, 11, 20, 39])

//func getMinMax(_ numbers: Int...) -> (min: Int?, max: Int?)?
//{
//    if numbers.isEmpty
//    {
//      return nil
//    }
//    return (numbers.min(), numbers.max())
//}
//if let result = getMinMax(34, 10, 99, 108)
//{
//  let min = result.min ?? Int.min
//  let max = result.max ?? Int.max
//  print("Min: \(min)")
//  print("Max: \(max)")
//}
//else
//{
//  print("No parameter was passed !")
//}

//var one: Int32 =  Int32.min
//print(one)
//var two: Int64 = Int64(one)
//print(two)

//func swapUsingPointer(_ a: UnsafeMutablePointer<Int>, _ b: UnsafeMutablePointer<Int>)
//{
//    (a.pointee, b.pointee) = (b.pointee, a.pointee) //pointee gives the value pointed by the pointer
//}
//var a = 5, b = 6
//print("Original a and b: (\(a),\(b))")
//swapUsingPointer(&a, &b)
//print("After swapping a and b: (\(a),\(b))")

//func checkDivisibilityBy2(of number: Int) -> Bool
//{
//    return number%2 == 0
//}
//
//func checkDivisibilityBy2Again(of number: Int) -> Bool
//{
//    number%2 == 0 // Implicitly returns a Bool. return keyword not used.
//}
//
//print(checkDivisibilityBy2(of: 46) ? "46 is Divisible by 2" : "46 is not Divisible by 2")
//print(checkDivisibilityBy2Again(of: 46) ? "46 is Divisible by 2" : "46 is not Divisible by 2")
//
//var a = 48
//a%2 == 0 ? print("EVEN") : print("ODD") // executing statements using ? :
//
//a = a%2 == 0 ? 0 : 1 // assigning values using ? :
//print(a)

//func swap(_ x: inout Int, _ y: inout Int)
//{
//    (x, y) = (y, x)
//}
//print(type(of: swap))
//print(type(of: swap) == ((inout Int, inout Int) -> ()).self)

//let nums = [1, 2, 3, 4, 5]
//let textualNums = ["One", "Two", "Three", "Four", "Five"]
//let dict = Dictionary(uniqueKeysWithValues: zip(nums, textualNums))
//print("Zipped Dictionary: \(dict)")
//print(type(of: dict))

//func multiplication(_ numbers: Int...) -> Int
//{
//    var p = 1
//    numbers.forEach{
//        p *= $0
//    }
//    return p
//}
//
//var performOperation: (Int...) -> Int = addition // Assigning performOperation to Addition Function
//print("Sum: \(performOperation(99, 88, 77, 55, 33))")
//performOperation = multiplication // Assigning performOperation to Multiplication Function
//print("Product: \(performOperation(99, 88, 77, 55, 33))")

//func addition(_ numbers: Int...) -> Int
//{
//    var s = 0
//    numbers.forEach{
//        s += $0
//    }
//    return s
//}
//
//func printAdditionResult(additionFn: (Int...) -> Int)
//{
//    print("The sum is: \(additionFn(78, 99, 12, 34, 56))")
//}
//
//printAdditionResult(additionFn: addition)

//typealias functionTemplate = (Int) -> Int

//func chooseIncOrDec(shouldDecrement: Bool = false) -> functionTemplate
//{
//    func incrementAndReturn(_ value: Int) -> Int
//    {
//        value + 1
//    }
//    func decrementAndReturn(_ value: Int) -> Int
//    {
//        value - 1
//    }
//    return shouldDecrement ? decrementAndReturn : incrementAndReturn
//}
//
//var a = 5
//print("Moving 5 towards zero...")
//let chosenFunction = chooseIncOrDec(shouldDecrement: true)
//while a >= 0
//{
//    print(a)
//    a = chosenFunction(a)
//}

//extension Int
//{
//    static postfix func ++(value: inout Int) -> Int
//    {
//        let temp = value
//        value += 1
//        return temp
//    }
//
//    static prefix func ++(value: inout Int) -> Int
//    {
//        value += 1
//        return value
//    }
//}

//func println2(_ items: Any...)
//{
//    for x in items
//    {
//        print(x, terminator: " ")
//    }
//    print("\n")
//}
//
//func println2(_ items: Any..., separator: String)
//{
//    for x in items
//    {
//        print(x, terminator: separator)
//    }
//    print("\n")
//}
//
//func println2(separator: String, _ items: Any...)
//{
//    for x in items
//    {
//        print(x, terminator: separator)
//    }
//    print("\n")
//}
//
//println2("Hello","World")
//println2("Hope you are doing well !")
//println2("This is from an overloaded function !",45,60,39,57.5,separator: ", ")
//println2(separator: " -> ","This is from another overloaded function !",99,66,"Hello",154.9)

//// Post-Increment Operator - Returns existing value and Increments
//postfix func ++(value: inout Int) -> Int
//{
//    let temp = value
//    value += 1
//    return temp
//}
//
//// Pre-Increment Operator - Increments first and returns new value
//prefix func ++(value: inout Int) -> Int
//{
//    value += 1
//    return value
//}

//var a = 5
//var b = a++ + a + ++a + a++ + a
//a = b++ + ++b
//print("a = \(a)")
//print("a++ = \(a++)")
//print("++a = \(++a)")
//print("b = \(b)")
//print("b++ = \(b++)")
//print("++b = \(++b)")
//
//// Sample while loop using ++ operator
//var i = 0
//// Prints from 0 to 9 since Post-Increment operator is used
//while i < 10
//{
//    print(i++,terminator: ", ")
//}
//print()
//i = 0
//// Prints from 1 to 10 since Pre-Increment operator is used
//while i < 10
//{
//    print(++i,terminator: ", ")
//}

//// Defining infix operator for exponentiation
//infix operator ** : MultiplicationPrecedence
//func **(lhs: Double, rhs: Double) -> Double
//{
//    pow(lhs, rhs)
//}
//var a = 2.5, b: Double = 6
//print("a ** b = \(a ** b)")
//print("b ** a = \(b ** a)")
//print("a * b ** a * b = \(a * b ** a * b)")
//print("b ** a * a * b = \(b ** a * a * b)")
//import Foundation
//typealias sampleTup = (Int, Int, Int, Int, Int, Int)
//var tuple1 = sampleTup(1,3,5,7,9,21)
//var tuple2 = (2,4,6,8,10)
////print(tuple1 < tuple2)
////var str ="Hello  "
////print(str.trimmingCharacters)
//
//func trimmingCharacters(in set: CharacterSet) -> String
//{
//    return " "
//}

// Function to find memory address of variable
//func address(_ of: UnsafeRawPointer) -> Int
//{
//    return Int(bitPattern: of)
//}
//
//var arr1 = 4
//var arr2 = arr1
//
//print("Before modifying arr2:")
//print("Address of arr1: \(address(&arr1))")
//print("Address of arr2: \(address(&arr2))")
//
//arr2 = 10
//
//print("After modifying arr2:")
//print("Address of arr1: \(address(&arr1))")
//print("Address of arr2: \(address(&arr2))")
//var a: () -> Int
//
//print(type(of: a)==(() -> Int).self)

//struct Example
//{
//    var value: String
//
//    init(_ value: String)
//    {
//        self.value = value
//    }
//
//    func print()
//    {
//        Swift.print(value)
//    }
//}
//var ex = Example("Hello World")
//ex.print()

//func address(of: UnsafeRawPointer) -> Int
//{
//    Int(bitPattern: of)
//}
//
//final class Ref<T>
//{
//    var val: T
//    init(_ v: T)
//    {
//        val = v
//    }
//}
//
//struct Box<T>
//{
//    var ref: Ref<T>
//    init(_ x: T)
//    {
//        ref = Ref(x)
//    }
//
//    var value: T
//    {
//        get
//        {
//            return ref.val
//        }
//        set(value)
//        {
//          if !isKnownUniquelyReferenced(&ref)
//          {
//              ref = Ref(value)
//              return
//          }
//            ref.val = value
//        }
//    }
//}
//var box1 = Box(23)
//var box2 = box1
//print("Before Modifying")
//print("Address of box 1: \(address(of: &box1))")
//print("Address of box 2: \(address(of: &box2))")
//print("After Modifying")
//box2.value = 43
//print("Address of box 1: \(address(of: &box1))")
//print("Address of box 2: \(address(of: &box2))")


//// Strong Reference Cycle
//class Person : CustomStringConvertible
//{
//    var description: String
//    {
//        get {
//            "\(name) resides in Apartment Number \(apartment!.unit)"
//        }
//    }
//    let name: String
//    init(name: String)
//    {
//        self.name = name
//    }
//    var apartment: Apartment?
//    deinit
//    {
//        print("\(name) is being deinitialized")
//    }
//}
//
//class Apartment : CustomStringConvertible
//{
//    var description: String
//    {
//        get {
//            "\(unit) has person \(person!.name)"
//        }
//    }
//    let unit: String
//    init(unit: String)
//    {
//        self.unit = unit
//    }
//    weak var tenant: Person?
//    deinit
//    {
//        print("Apartment \(unit) is being deinitialized")
//    }
//}
//var person: Person? = Person(name: "Kris")
//var apartment: Apartment? = Apartment(unit: "5A")
//person!.apartment = apartment
//apartment!.tenant = person
//print(person!.apartment!)
//print(apartment!.tenant!)
//person = nil
//apartment = nil
//var set = [1, 2, 3]
//print(address(of: set))

//let arr = [34, 99, 56, 12, 10, 108, 543, 7]
//print("Original Array: \(arr)")
//let sortedArr = arr.sorted { $0 > $1 }
//print("Array sorted in Descending Order: \(sortedArr)")

//func makeIncrementer(forIncrement amount: Int) -> () -> Int
//{
//    var runningTotal = 0
//    func incrementer() -> Int
//    {
//        runningTotal += amount // runningTotal and amount captured by closure
//        return runningTotal
//    }
//    return incrementer
//}
//let incrementBy10 = makeIncrementer(forIncrement: 10)
//for _ in 0...3
//{
//    print("Incremented by 10: \(incrementBy10())")
//}
//let incrementBy20 = makeIncrementer(forIncrement: 20)
//for _ in 0...3
//{
//    print("Incremented by 20: \(incrementBy20())")
//}
//print("Sum of both incrementers: \(incrementBy10() + incrementBy20())")
//
//var str = "Hello"

//class HTMLElement {
//
//    let name: String
//    let innerHtml: String?
//
//    lazy var asHTML: () -> String = { [unowned self] in
//            if let text = self.innerHtml {
//                return "<\(self.name)>\(text)</\(self.name)>"
//            }
//         else {
//                return "<\(self.name) />"
//            }
//        }
//
//    init(name: String, innerHtml: String? = nil) {
//        self.name = name
//        self.innerHtml = innerHtml
//    }
//
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//
//}
//var div: HTMLElement = HTMLElement(name: "div", innerHtml: "Hello")
//print(div.asHTML())
//let a = 5
//print(a)

//class A: CustomStringConvertible
//{
//    var value: Int
//    var description: String
//    {
//        get
//        {
//            "A (value = \(value))"
//        }
//    }
//
//    init(_ value: Int)
//    {
//        self.value = value
//    }
//
//    deinit
//    {
//        print("\(self) is being deinitialized !")
//    }
//}
//let _ = A(5)
//var aOpt: A? = A(10)
//print(aOpt!)
//aOpt = nil

//var completionHandlers: [Int : (Int) -> Void] = [:]
//func functionWithCompletionTracker(seed: Int, completionHandler: @escaping (Int) -> Void)
//{
//    if seed.isMultiple(of: 2)
//    {
//        completionHandlers[seed] = completionHandler
//    }
//}
//let sampleCompletionHandler: (Int) -> Void  = {
//    print("functionWithCompletionTracker() completed successfully for seed \($0) !")
//}
//for x in 0..<4
//{
//    let random = Int.random(in: x...40)
//    functionWithCompletionTracker(seed: random, completionHandler: sampleCompletionHandler)
//    if let handler = completionHandlers[random]
//    {
//        handler(random)
//    }
//    else
//    {
//        print("No Completion Handler for \(random) !")
//    }
//}

//var customersInLine = ["Kris", "Hari", "Shiv", "Sunder", "Sathya"]
//print(customersInLine.count)
//func serveCustomer(customerProvider: @autoclosure () -> String)
//{
//    print("Now serving \(customerProvider())!")
//}
//serveCustomer(customerProvider: customersInLine.remove(at: 0)) // Using autoclosure
//print(customersInLine.count)

//struct Student: CustomStringConvertible
//{
//    private let _rollNo: Int // No need of mutation, hence let is used
//    private var _name: String
//    {
//        willSet
//        {
//            print("Going to set the New Name: \(newValue)...")
//        }
//        didSet
//        {
//            print("Have set the New Name: \(_name) and disposed off the Old Name: \(oldValue) !")
//        }
//    }
//    private var _department: String
//
//    var rollNo: Int // Get-Only Property
//    {
//        _rollNo
//    }
//
//    var name: String
//    {
//        get
//        {
//            _name
//        }
//        set
//        {
//            _name = newValue
//        }
//    }
//
//    var department: String
//    {
//        get
//        {
//            _department
//        }
//        set
//        {
//            _department = newValue
//        }
//    }
//
//
//    var description: String
//    {
//        "Student \(_name) of \(_department) Department has roll number: \(_rollNo)."
//    }
//
//    init(rollNo: Int, name: String, department: String)
//    {
//        self._rollNo = rollNo
//        self._name = name
//        self._department = department
//    }
//
//    mutating func changeNameAndDepartment(newName: String, newDepartment: String)
//    {
//        _name = newName
//        _department = newDepartment
//    }
//
//}
//
//var student = Student(rollNo: 1, name: "Kris", department: "CSE")
//print(student)
//student.changeNameAndDepartment(newName: "Shiv", newDepartment: "IT")
//print(student)

//struct Point
//{
//    var x: Int
//    var y: Int
//    static let origin: Self = Self(x: 0, y:0)
//
//    static func +(lhs: Self, rhs: Self) -> Self
//    {
//        Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
//    }
//
//    static func -=(lhs: inout Self, rhs: Self)
//    {
//        lhs.x -= rhs.x
//        lhs.y -= rhs.y
//    }
//}
//let point1 = Point(x: 5, y: 6)
//print("Point 1: \(point1)")
//let point2 = Point(x: 2, y: 10)
//print("Point 2: \(point2)")
//var point3 = point1 + point2
//print("Sum of Point 1 and Point 2: \(point3)")
//let point4 = Point(x: 3, y: 9)
//print("Point 4: \(point4)")
//point3 -= point4
//print("Point 3 after subtracting Point 4 from it: \(point3)")
//print("The origin is always located at: \(Point.origin)")

//struct Person
//{
//    var name: String
//    var age: Int
//}
//
//struct Game
//{
//    var players: [Person]
//    var value: Int
//    {
//        didSet
//        {
//            print("old value \(value)")
//        }
//    }
//    lazy var mostRecentlyAddedPlayer = players.last!
//}
//
//let player1 = Person(name: "Kris", age: 21)
//let player2 = Person(name: "Sundar", age: 21)
//let player3 = Person(name: "Ram", age: 22)
//let player4 = Person(name: "Shiv", age: 25)
//
//let allPlayers = [player1, player2, player3, player4]
//
//var game =  Game(players: allPlayers, value: 5)
//print(game)
//print(game.mostRecentlyAddedPlayer)
//game.players.append(Person(name: "Skand", age: 22))
//print(game.mostRecentlyAddedPlayer) // Lazy variable does not get computed after the first time
//game.mostRecentlyAddedPlayer = game.players.last! //Manually Reassigning to get updated value
//print(game.mostRecentlyAddedPlayer)

//@propertyWrapper struct Capitalized
//{
//    private var originalValue: String
//
//    var wrappedValue: String
//    {
//        get
//        {
//            originalValue
//        }
//        set
//        {
//            originalValue = capitalizeString(newValue)
//        }
//    }
//
//    private func capitalizeString(_ value: String) -> String
//    {
//        let first = value[value.startIndex].uppercased()
//        let remaining = String(value.dropFirst())
//        return first + remaining
//    }
//
//    init(wrappedValue: String)
//    {
//        self.originalValue = ""
//        self.wrappedValue = wrappedValue
//    }
//
//}
//
//struct Person: CustomStringConvertible
//{
//    @Capitalized var firstName: String
//    @Capitalized var lastName: String
//
//    var fullName: String
//    {
//        firstName + " " + lastName
//    }
//
//    var description: String
//    {
//        "Person(firstName: \(firstName), lastName: \(lastName), fullName: \(fullName))"
//    }
//}
//
//var person1 = Person(firstName: "ashwin", lastName: "kumar")
//print(person1) // Capitalized Version got updated
//person1.firstName = "tharun"
//print(person1.firstName) // Capitalized Version got updated

//class Student: CustomStringConvertible, Equatable
//{
//    var rollNo: Int
//    var name: String
//    var description: String
//    {
//        "Student(rollNo = \(rollNo), name = \(name))"
//    }
//
//    init(rollNo: Int, name: String)
//    {
//        self.rollNo = rollNo
//        self.name = name
//    }
//
//    func changeRollNoAndName(newRollNo:Int, newName: String)
//    {
//        rollNo = newRollNo
//        name = newName
//    }
//
//    public static func == (lhs: Student, rhs: Student) -> Bool
//    {
//        lhs.name == rhs.name && lhs.rollNo == lhs.rollNo
//    }
//
//    deinit
//    {
//        print("Student: \(name) is being deinitialized...")
//    }
//}
//
//let student1 = Student(rollNo: 1, name: "Kris")
//let student2 = student1
//let student3 = Student(rollNo: 2, name: "Kris")
//print("Student 1: \(student1)")
//print("Student 2: \(student2)")
//print("Student 3: \(student3)")
//print("student1 === student2: \(student1 === student2)")
//student2.rollNo = 2 // Changing rollNo of student 2
//print("Student 1: \(student1)") // Student 1 rollNo also changed. Call by reference behaviour
//print("Student 2: \(student2)")
//print("student2 === student3: \(student2 === student3)") // Even though Same value but different reference, so false
//print("student2 == student3: \(student2 == student3)") // Even though different reference, same value is present. so == returns true
//print("student1 == student2: \(student1 == student2)")
//print("student1 == student3: \(student1 == student3)")
//let student4 = Student(rollNo: 3, name: "Ram")
//print("Student 4: \(student4)")
//print("student4 != student1: \(student4 != student1)")// true as rollNo not and Name equal

//class Age: CustomStringConvertible
//{
//    var description: String
//    {
//        "Age(\(value))"
//    }
//
//    var value: Int
//
//    init?(_ value: Int)
//    {
//        if value < 0 || value > 100
//        {
//            print("Invalid Age \(value)! ")
//            return nil
//        }
//        else
//        {
//            self.value = value
//        }
//    }
//
//    init()
//    {
//        self.value = Int.random(in: 0...100)
//    }
//}
//
//for x in [-2, 21, 500]
//{
//    if let age = Age(x)
//    {
//        print(age)
//    }
//    else
//    {
//        print("As Invalid Age \(x) is provided, randomizing Age Value: \(Age())")
//    }
//}

//class Animal: CustomStringConvertible
//{
//    var description: String
//    {
//        "Animal(isMammal: \(isMammal))"
//    }
//
//    var isMammal: Bool
//
//    init(isMammal: Bool)
//    {
//        self.isMammal = isMammal
//    }
//
//    func makeSound()
//    {
//        fatalError("This method must be overridden by subclasses for it to work!!!") // Abstract Methods can be implemented like this
//    }
//}
//
//class Dog: Animal
//{
//    override var description: String
//    {
//        "Dog(isMammal: \(isMammal), isStrayDog: \(isStrayDog))"
//    }
//
//    var isStrayDog: Bool
//
//    override func makeSound()
//    {
//        print("Woof!!!")
//    }
//
//    init(isStrayDog: Bool)
//    {
//        self.isStrayDog = isStrayDog
//        super.init(isMammal: true)
//    }
//}
//
//class PetDog: Dog
//{
//    override var description: String
//    {
//        "PetDog(name: \(name), isMammal: \(isMammal), isStrayDog: \(isStrayDog))"
//    }
//
//    var name: String
//
//    init(name: String)
//    {
//        self.name = name
//        super.init(isStrayDog: false)
//    }
//}
//
//var petDog = PetDog(name: "Jimmy")
//print(type(of: petDog))
//print(petDog)

//class privateA
//{
//    private func a()
//    {
//
//    }
//}
//class fileprivateA
//{
//    fileprivate func a()
//    {
//
//    }
//}
//class internalA
//{
//    internal func a()
//    {
//
//    }
//}
//class publicA
//{
//    public func a()
//    {
//
//    }
//}
//class openA
//{
//    open func a()
//    {
//
//    }
//}
//
//class B: openA
//{
//    override open func a()
//    {
//
//    }
//}
//B().a()

//private class privateA
//{
//    private var a: Int
//
//    init(_ a: Int)
//    {
//        self.a = a
//    }
//}
//
//fileprivate class fileprivateA
//{
//    public var a: Int
//
//    init(_ a: Int)
//    {
//        self.a = a
//    }
//}
//
//internal class internalA
//{
//    public var a: Int
//
//    init(_ a: Int)
//    {
//        self.a = a
//    }
//}
//
//public class publicA
//{
//    public var a: Int
//
//    init(_ a: Int)
//    {
//        self.a = a
//    }
//}
//
//open class openA
//{
//    public var a: Int
//
//    init(_ a: Int)
//    {
//        self.a = a
//    }
//}
//
//open class B: openA
//{
//
//}

//class A: CustomStringConvertible
//{
//    var a: Int
//    var b: Int
//
//    var description: String
//    {
//        "(a = \(a), b = \(b))"
//    }
//
//    init(_ a: Int)
//    {
//        self.a = a
//        self.b = self.a // Copy passed
//    }
//}
//
//struct X
//{
//    var x: A
//    var y: A
//
//    init(_ x: A)
//    {
//        self.x = x
//        self.y = self.x // Reference Passed
//    }
//}
//
//var x1 = X(A(2))
//var x2 = x1
//print(x1)
//print(x2)
//x1.y.a = 12
//x1.y.b = 11
//x2.y.a = 13
//print(x1)
//print(x2)

//class A
//{
//    static func nonOverridableFunc() // Equivalent of final class func
//    {
//        print("Non-overridable static function")
//    }
//
//    class func overridableFunc()
//    {
//        print("Overridable class function (Now in class A)")
//    }
//
//    final class func nonOverridableFunc2()
//    {
//        print("Non-overridable class function mimicking static function")
//    }
//}
//
//class B: A
//{
//    override class func overridableFunc()
//    {
//        print("Overridable class function (Now in class B)")
//    }
//}
//
//A.nonOverridableFunc()
//A.overridableFunc()
//B.overridableFunc()
//A.nonOverridableFunc2()

//class Message
//{
//    var content: String
//    var sender: String
//    var receiver: String
//
//    init(content: String, sender: String, receiver: String)
//    {
//        self.content = content
//        self.sender = sender
//        self.receiver = receiver
//    }
//
//    convenience init(content: String)
//    {
//        self.init(content: content, sender: "Anonymous", receiver: "Anonymous")
//    }
//
//    func sendMessage()
//    {
//        print("\(content) sent by \(sender)")
//        print("\(content) received by \(receiver)")
//    }
//}
//
//Message(content: "Hello !", sender: "Kris", receiver: "Shiv").sendMessage()
//Message(content: "Stay safe !").sendMessage()

//class Person
//{
//    var name: String
//    var age: Int
//
//    required init(name: String, age: Int)
//    {
//        self.name = name
//        self.age = age
//    }
//
//    deinit
//    {
//        print("Person deinitialized...")
//    }
//}
//
//class Student: Person
//{
//    var rollNumber: Int
//
//    required init(name: String, age: Int)
//    {
//        self.rollNumber = Int.random(in: 1...100)
//        super.init(name: name, age: age)
//    }
//
//    deinit
//    {
//        print("Student deinitialized...")
//    }
//}
//
//var _ = Student(name: "Shri", age: 21)

//class MultiplicationTables
//{
//    var multiplier: Int
//
//    init(of multiplier: Int)
//    {
//        self.multiplier = multiplier
//    }
//
//    subscript(index: Int) -> Int //Read-only subscript
//    {
//        index * multiplier
//    }
//}
//let elevenTables = MultiplicationTables(of: 11)
//for x in 10...20
//{
//    print("\(x) * 11 = \(elevenTables[x])") // Using Subscript syntax [] to get value
//}

//class RandomMatrix
//{
//    var rows: Int, columns: Int, values: [Int]
//
//    init(rows: Int, columns: Int)
//    {
//        self.rows = rows
//        self.columns = columns
//        values = Array(repeating: 0, count: rows * columns)
//        for i in 0..<(rows * columns)
//        {
//            values[i] = Int.random(in: 1...100)
//        }
//    }
//
//    func indexIsValid(row: Int, column: Int) -> Bool
//    {
//        row >= 0 && row < rows && column >= 0 && column < columns
//    }
//
//    subscript(row: Int, column: Int) -> Int
//    {
//        get
//        {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return values[(row * columns) + column]
//        }
//        set
//        {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            values[(row * columns) + column] = newValue
//        }
//    }
//}
//
//let squareMatrix = RandomMatrix(rows: 4, columns: 4)
//for i in 0..<4
//{
//    for j in 0..<4
//    {
//        print(squareMatrix[i, j],terminator: " ") // Using multiple parameter subscript
//    }
//    print()
//}

//class MultiplicationTables
//{
//    var multiplier: Int
//
//    private init(of multiplier: Int)
//    {
//        self.multiplier = multiplier
//    }
//
//    subscript(index: Int) -> Int //Read-only subscript
//    {
//        index * multiplier
//    }
//
//    static subscript(multiplier: Int) -> MultiplicationTables //Read-only static subscript
//    {
//        MultiplicationTables(of: multiplier)
//    }
//}
//
//print("Tables of 9 and 10: ")
//for x in 9...10
//{
//    print("\(x) Tables")
//    for y in 1...10
//    {
//        print("\(x) * \(y) = \(MultiplicationTables[x][y])")
//    }
//    print()
//}

//enum Direction
//{
//    case north, south, east, west
//}
//
//var directionToMove = Direction.east
//print("Direction to Move: \(directionToMove)")
//print(type(of: directionToMove) == Direction.self)
//let preferredDirection: Direction = .north
//print("Preferred Direction: \(preferredDirection)")
//directionToMove = preferredDirection
//print("Direction to Move changed to Preferred Direction: \(directionToMove)")
//
//enum Gender
//{
//    case male, female, other
//}
//
//var gender: Gender = .male
//
//switch(gender)
//{
//case .male:
//    print("MALE")
//case .female:
//    print("FEMALE")
//case .other:
//    print("OTHER")
//}

//enum Beverage: CaseIterable
//{
//    case coffee, tea, juice, milkshake
//}
//
//print("\(Beverage.allCases.count) Beverages are available. They are:")
//
//for x in Beverage.allCases
//{
//    print(x)
//}

//enum Planet: Int, CaseIterable
//{
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//print("Planets of Milky Way are:")
//
//for x in Planet.allCases
//{
//    print("\(x.rawValue) : \(x)")
//}
//
//let earth = Planet(rawValue: 3)
//print(earth!)

//enum Transaction
//{
//    case card(cardNo: String, pin: UInt, amount: Double)
//    case upi(upiId: String, upiPin: UInt, amount: Double)
//    case cash(amount: Double)
//}
//
//func makeTransaction(txn: Transaction)
//{
//    switch(txn)
//    {
//    case let .card(cardNo, pin, amount):
//        print("\(amount) transacted from Card: \(cardNo) having PIN: \(pin)")
//    case let .upi(upiId, upiPin, amount):
//        print("\(amount) transacted from account using UPI ID: \(upiId) having PIN: \(upiPin)")
//    case let .cash(amount):
//        print("\(amount) was transacted as liquid cash")
//    }
//}
//
//let upiPayment: Transaction = .upi(upiId: "abc@upi", upiPin: 1234, amount: 1000)
//makeTransaction(txn: upiPayment)

//indirect enum ArithmeticExpression
//{
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//
//func evaluate(_ expression: ArithmeticExpression) -> Int
//{
//    switch expression
//    {
//    case let .number(value):
//        return value
//    case let .addition(left, right):
//        return evaluate(left) + evaluate(right)
//    case let .multiplication(left, right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//let nine = ArithmeticExpression.number(9)
//let five = ArithmeticExpression.number(5)
//let sum = ArithmeticExpression.addition(five, nine)
//let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(81))
//print(evaluate(product))

//class MediaItem
//{
//    var name: String
//    init(name: String)
//    {
//        self.name = name
//    }
//}
//
//class Movie: MediaItem
//{
//    var director: String
//    init(name: String, director: String)
//    {
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem
//{
//    var artist: String
//    init(name: String, artist: String)
//    {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//let library: [MediaItem] = [
//    Movie(name: "Casablanca", director: "Michael Curtiz"),
//    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
//    Movie(name: "Citizen Kane", director: "Orson Welles"),
//    Song(name: "The One And Only", artist: "Chesney Hawkes"),
//    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
//]
//
//let movie: MediaItem = Movie(name: "Jurassic Park", director: "Steven Spielberg") // Implicit Upcasting
//print(type(of: movie))
//print(movie is MediaItem)
//print(movie is Movie)
//print((movie as! Movie).director) // Downcasting to access Movie Director
//
//let song: MediaItem = Song(name: "Un Mela", artist: "Jitin") as MediaItem // Explicit Typecasting
//print(type(of: song))
//print(song is MediaItem)
//print(song is Song)
//print((song as! Song).artist) // Downcasting to access Song Artist

//extension Double
//{
//    var km: Double { return self * 1_000.0 }
//    var m: Double { return self }
//    var cm: Double { return self / 100.0 }
//    var mm: Double { return self / 1_000.0 }
//    var ft: Double { return self / 3.28084 }
//}
//
//let oneInch = 25.4.mm
//print("One inch is \(oneInch) meters")
//let threeFeet = 3.ft
//print("Three feet is \(threeFeet) meters")

//struct Size
//{
//    var width = 0.0, height = 0.0
//}
//
//struct Point
//{
//    var x = 0.0, y = 0.0
//}
//
//struct Rect
//{
//    var origin = Point()
//    var size = Size()
//}
//
//extension Rect
//{
//    init(center: Point, size: Size)
//    {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
//
//print(centerRect)

//extension Int
//{
//    func loop(_ action: () -> Void) // Extension Instance Method
//    {
//        for _ in 0..<self
//        {
//            action()
//        }
//    }
//
//    static func checkPrimality(of number: Int) -> Bool //Extension Type Method
//    {
//        if number <= 1
//        {
//            return false
//        }
//
//        if number == 2
//        {
//            return true
//        }
//
//        if number > 2 && number.isMultiple(of: 2)
//        {
//            return false
//        }
//
//        for x in 3...Int(floor(sqrt(Double(number/2))))
//        {
//            if number.isMultiple(of: x)
//            {
//                return false
//            }
//        }
//        return true
//    }
//}
//
//5.loop  // Execute Loop Closure for 5 times
//{
//    let r = Int.random(in: 1...100)
//    print("Is \(r) a Prime Number ? \(Int.checkPrimality(of: r))")
//}

//extension Int
//{
//    mutating func square()
//    {
//        self *= self
//    }
//}
//
//var num = 81
//num.square()
//print(num)

//struct Point
//{
//    var x: Int, y: Int
//
//    init(_ x: Int, _ y: Int)
//    {
//        self.x = x
//        self.y = y
//    }
//}
//
//struct Square
//{
//    var cornerPoints: (Point, Point, Point, Point)
//    var area: Int
//}
//
//extension Square
//{
//    subscript(_ index: Int) -> Point
//    {
//        switch(index)
//        {
//        case 0:
//            return cornerPoints.0
//        case 1:
//            return cornerPoints.1
//        case 2:
//            return cornerPoints.2
//        case 3:
//            return cornerPoints.3
//        default:
//            fatalError("Invalid Corner Point Index !")
//        }
//    }
//}
//let point1 = Point(0, 2)
//let point2 = Point(2, 2)
//let point3 = Point(2, 0)
//let point4 = Point(4, 2)
//
//let square = Square(cornerPoints: (point1, point2, point3, point4), area: 4)
//
//print("3rd Point of Square is: \(square[2])")

//extension Int
//{
//    enum Kind
//    {
//        case negative, zero, positive
//    }
//
//    var kind: Kind
//    {
//        switch self
//        {
//        case 0:
//            return .zero
//        case let x where x > 0:
//            return .positive
//        default:
//            return .negative
//        }
//    }
//}
//
//func getKind(_ value: Int) -> String
//{
//    switch(value.kind)
//    {
//    case .zero:
//        return "Zero"
//    case .positive:
//        return "Positive Integer"
//    case .negative:
//        return "Negative Integer"
//    }
//}
//
//for x in -5...5
//{
//    print("\(x) is \(getKind(x))")
//}

//protocol FullyNamed
//{
//    var fullName: String { get }
//}
//
//struct Person: FullyNamed
//{
//    var firstName: String
//    var lastName: String
//    var fullName: String
//    {
//        "\(firstName) \(lastName)"
//    }
//}
//
//let person = Person(firstName: "Kris", lastName: "Sri")
//print(person.fullName)

//protocol EvenNumberGenerator
//{
//    static func randomEven() -> (number: Int, tries: Int)
//}
//
//extension Int: EvenNumberGenerator
//{
//    static func randomEven() -> (number: Int, tries: Int)
//    {
//        var result = Int.random(in: 1...100)
//        var count = 1
//        while !result.isMultiple(of: 2)
//        {
//            count += 1
//            result = Int.random(in: 1...100)
//        }
//        return (result,count)
//    }
//}
//let result = Int.randomEven()
//print("Got even number \(result.number) after \(result.tries) tries.")

//protocol Togglable
//{
//    mutating func toggle()
//}
//
//enum Switch: Togglable
//{
//    case on, off
//
//    mutating func toggle()
//    {
//        switch self
//        {
//        case .on:
//            self = .off
//        case .off:
//            self = .on
//        }
//    }
//}
//
//var fanSwitch = Switch.off
//print("State of Fan: \(fanSwitch)")
//print("Turning on Fan...")
//fanSwitch.toggle()
//print("State of Fan: \(fanSwitch)")

//protocol AnonymousPerson
//{
//    var name: String { get set }
//    var age: UInt { get set }
//    init(age: UInt)
//}
//
//struct Person: AnonymousPerson
//{
//    var name: String
//    var age: UInt
//
//    init(age: UInt)
//    {
//        name = "Anonymous"
//        self.age = age
//    }
//
//    init(name: String, age: UInt)
//    {
//        self.name = name
//        self.age = age
//    }
//}
//
//let unnamedPerson = Person(age: 21)
//print(unnamedPerson)

//protocol Identifiable
//{
//    var id: UInt { get }
//    mutating func regenerateId()
//}
//
//struct User: Identifiable, CustomStringConvertible
//{
//    private var _id: UInt
//    var name: String
//    var age: Int
//    var description: String
//    {
//        "User(id: \(_id), name: \(name), age: \(age))"
//    }
//
//    var id: UInt
//    {
//        _id
//    }
//
//    mutating func regenerateId()
//    {
//        _id = UInt.random(in: 1...100)
//    }
//
//    init(name: String, age: Int)
//    {
//        _id = UInt.random(in: 1...100)
//        self.name = name
//        self.age = age
//    }
//}
//
//struct Subject: Identifiable, CustomStringConvertible
//{
//    private var _id: UInt
//    var name: String
//    var department: String
//    var description: String
//    {
//        "Subject(id: \(_id), name: \(name), department: \(department))"
//    }
//
//    var id: UInt
//    {
//        _id
//    }
//
//    mutating func regenerateId()
//    {
//        _id = UInt.random(in: 1...100)
//    }
//
//    init(name: String, department: String)
//    {
//        _id = UInt.random(in: 1...100)
//        self.name = name
//        self.department = department
//    }
//}
//
//var dsa: Identifiable = Subject(name: "Data Structures and Algorithms", department: "CSE")
//var student: Identifiable = User(name: "Kris", age: 21)
//print("ID of DSA Subject: \(dsa.id)")
//print("Regenerating ID of DSA...")
//dsa.regenerateId()
//print("ID of DSA Subject: \(dsa.id)")
//print("Department of DSA is: \((dsa as! Subject).department)") // Downcasting to access department
//print(dsa)
//print(student)

//class Point
//{
//    var x: Int, y: Int
//
//    init(_ x: Int, _ y: Int)
//    {
//        self.x = x
//        self.y = y
//    }
//}
//
//extension Point: StringRepresentation
//{
//    var asString: String
//    {
//        "Point(x = \(x), y = \(y))"
//    }
//}
//
//extension Array: StringRepresentation where Element: StringRepresentation
//{
//    var asString: String
//    {
//        let itemsAsString = self.map { $0.asString }
//        return "[" + itemsAsString.joined(separator: ", ") + "]"
//    }
//}
//
//let points = [Point(2, 4), Point(6, 7)]
//print(points.asString)

//protocol StringRepresentation
//{
//    var asString: String { get }
//}
//
//struct Person
//{
//    var name: String
//    var age: UInt
//    var asString: String
//    {
//        "Person(name = \(name), age = \(age))"
//    }
//}
//
//extension Person: StringRepresentation{}
//
//print(Person(name: "Kris", age: 21) is StringRepresentation)

//protocol AbstractList: AnyObject
//{
//    func addNewNode(_ newData: Int)
//    func addMultipleNodes(_ newData: Int...)
//}
//
//class Node: CustomStringConvertible
//{
//    var next: Node?
//    var data: Int
//    var description: String
//    {
//        var text = ""
//        if let n = next
//        {
//            text = n.description
//        }
//        else
//        {
//            text = "nil"
//        }
//        return "\(data) -> \(text)"
//    }
//
//    init(data: Int, next: Node? = nil)
//    {
//        self.data = data
//        self.next = next
//    }
//}
//
//class LinkedList: AbstractList
//{
//    var root: Node
//
//    init(root: Node)
//    {
//        self.root = root
//    }
//
//    func addNewNode(_ newData: Int)
//    {
//        var head = root
//        let newNode = Node(data: newData)
//        while head.next != nil
//        {
//            head = head.next!
//        }
//        head.next = newNode
//    }
//
//    func addMultipleNodes(_ newData: Int...)
//    {
//        for x in newData
//        {
//            addNewNode(x)
//        }
//    }
//
//    func printList()
//    {
//        print(root)
//    }
//}
//
//var list = LinkedList(root: Node(data: 9))
//list.addMultipleNodes(8, 7, 6, 5, 4, 3, 2, 1)
//list.printList()

//protocol Named
//{
//    var name: String { get }
//}
//
//protocol Aged
//{
//    var age: Int { get }
//}
//
//struct Person: Named, Aged
//{
//    var name: String
//    var age: Int
//}
//
//func wishHappyBirthday(to celebrator: Named & Aged)
//{
//    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
//}
//
//let birthdayPerson = Person(name: "Ian Malcolm", age: 21)
//wishHappyBirthday(to: birthdayPerson)

//protocol StringRepresentation: CustomStringConvertible
//{
//    var asString: String { get }
//}
//
//extension StringRepresentation
//{
//    var asString: String
//    {
//        return description
//    }
//}
//
//class Point: StringRepresentation
//{
//    var x: Int, y: Int
//    var description: String
//    {
//        "Point(x: \(x), y: \(y))"
//    }
//
//    init(_ x: Int, _ y: Int)
//    {
//        self.x = x
//        self.y = y
//    }
//}
//print(Point(8, 10).asString)

//extension Collection where Element: Equatable
//{
//    func allEqual() -> Bool
//    {
//        for element in self
//        {
//            if element != self.first
//            {
//                return false
//            }
//        }
//        return true
//    }
//}
//let equalNumbers = [100, 100, 100, 100, 100]
//print(equalNumbers.allEqual())

//func swap<T>(_ a: inout T, _ b: inout T) // Generic Function for swapping two variables
//{
//    (a, b) = (b, a) // Using Tuple Syntax for swapping
//}
//
//var a = 5, b = 6
//print("a = \(a), b = \(b)")
//print("After swapping...")
//swap(&a, &b)
//print("a = \(a), b = \(b)")
//
//var x = "Hello", y = "World"
//print("x = \(x), y = \(y)")
//print("After swapping...")
//swap(&x, &y)
//print("x = \(x), y = \(y)")

//struct Stack<Element>
//{
//    private var values: [Element] = []
//
//    var count: Int
//    {
//        values.count
//    }
//
//    mutating func push(_ newElement: Element)
//    {
//        values.append(newElement)
//    }
//
//    mutating func pop()
//    {
//        values.removeLast()
//    }
//
//    func peek() -> Element?
//    {
//        values.last
//    }
//
//    func printStack()
//    {
//        print("\(values[values.endIndex - 1]) <- Top")
//        var i = values.endIndex - 2
//        while i >= values.startIndex
//        {
//            print(values[i])
//            i -= 1
//        }
//    }
//}

//extension Stack
//{
//    var isEmpty: Bool
//    {
//        count == 0
//    }
//
//    mutating func clearStack()
//    {
//        values.removeAll()
//    }
//}
//
//var intStack = Stack<Int>()
//intStack.push(5)
//intStack.push(4)
//intStack.push(3)
//intStack.push(2)
//intStack.push(1)
//print("The stack has: \(intStack.count) Elements.")
//print("Original Stack:")
//intStack.printStack()
//print("Top element: \(intStack.peek()!)")
//intStack.pop()
//print("Top element after popping: \(intStack.peek()!)")
//intStack.pop()
//intStack.pop()
//print("Now, the stack has: \(intStack.count) Elements.")
//print("Stack's present state:")
//intStack.printStack()
//intStack.clearStack()
//print("Is intStack empty now ? \(intStack.isEmpty)")

//func sum<T: SignedNumeric>(_ values: T...) -> T
//{
//    var result: T = 0
//    values.forEach {
//        result += $0
//    }
//
//    return result
//}
//
//print(sum(99, 57, 86, 89.6, -98.2, 563, -42))

//protocol Container
//{
//    associatedtype Item
//    mutating func append(_ item: Item)
//    var count: Int { get }
//    subscript(i: Int) -> Item { get }
//    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
//    func makeIterator() -> Iterator
//}
//
//extension Container
//{
//    subscript<Indices: Sequence>(indices: Indices) -> [Item]
//        where Indices.Iterator.Element == Int
//    {
//        var result: [Item] = []
//        for index in indices
//        {
//            result.append(self[index])
//        }
//        return result
//    }
//}
//
//struct Stack<Element>: Container
//{
//
//
//    // Basic Implementation
//    private var values: [Element] = []
//
//    mutating func push(_ newElement: Element)
//    {
//        values.append(newElement)
//    }
//
//    mutating func pop()
//    {
//        values.removeLast()
//    }
//
//    func peek() -> Element?
//    {
//        values.last
//    }
//
//    func printStack()
//    {
//        print("\(values[values.endIndex - 1]) <- Top")
//        var i = values.endIndex - 2
//        while i >= values.startIndex
//        {
//            print(values[i])
//            i -= 1
//        }
//    }
//
//    // Implementation of Container Protocol
//    typealias Item = Element
//
//    mutating func append(_ item: Element)
//    {
//        self.push(item)
//    }
//
//    var count: Int
//    {
//        values.count
//    }
//
//    subscript(i: Int) -> Element
//    {
//        values[i]
//    }
//}
//
//extension Array: Container {}
//
//func allItemsMatch<C1: Container, C2: Container>
//    (_ someContainer: C1, _ anotherContainer: C2) -> Bool where C1.Item == C2.Item, C1.Item: Equatable
//{
//    // Check that both containers contain the same number of items.
//    if someContainer.count != anotherContainer.count
//    {
//        return false
//    }
//
//    // Check each pair of items to see if they're equivalent.
//    for i in 0..<someContainer.count
//    {
//        if someContainer[i] != anotherContainer[i]
//        {
//            return false
//        }
//    }
//
//    // All items match, so return true.
//    return true
//}
//
//extension Stack where Element: Equatable
//{
//    func isTop(_ item: Element) -> Bool
//    {
//        guard let topItem = values.last else
//        {
//            return false
//        }
//        return topItem == item
//    }
//}
//
//extension Container
//{
//    func average() -> Double where Item == Int
//    {
//        var sum = 0.0
//        for index in 0..<count
//        {
//            sum += Double(self[index])
//        }
//        return sum / Double(count)
//    }
//
//    func endsWith(_ item: Item) -> Bool where Item: Equatable
//    {
//        return count >= 1 && self[count-1] == item
//    }
//}
//let numbers = [1260, 1200, 98, 76, 37]
//print(numbers.average())
//print(numbers.endsWith(37))

//enum VendingMachineError: Error
//{
//    case invalidSelection
//    case insufficientFunds(coinsNeeded: Int)
//    case outOfStock
//}

//enum DivisionError: Error
//{
//    case divideByZero(cause: String)
//}
//
//func divide(_ dividend: Int, _ divisor: Int) throws -> Int
//{
//    guard divisor != 0 else
//    {
//        throw DivisionError.divideByZero(cause: "Divisor is Zero !")
//    }
//    return dividend/divisor
//}
//
//var result = try! divide(90, 45) // It is known beforehand that 90/45 won't throw an error
//print("Quotient = \(result)")
