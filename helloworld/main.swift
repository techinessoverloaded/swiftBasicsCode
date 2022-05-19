//import Foundation
//
//var str = readLine() ?? "No value"
//var str2 = str.trimmingCharacters(in: .whitespacesAndNewlines)

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

//typealias sampleTup = (Int, Int, Int, Int, Int, Int)
//var tuple1 = sampleTup(1,3,5,7,9,21)
//var tuple2 = (2,4,6,8,10,12)
//print(tuple1 < tuple2)

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

