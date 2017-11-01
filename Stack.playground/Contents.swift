//: Creation: a place where people can create

import UIKit

class Node<T> {
    let value: T // Holds the value of this Node
    var next: Node? //We are not even using this in this class, we will be using it in struct
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    var numberOfItems: Int = 0
    
    func push(value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
        numberOfItems += 1
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        numberOfItems -= 1
        return currentTop?.value
    }

    func peek() -> T? {
        return top?.value
    }
    
    func size() -> Int {
        return self.numberOfItems
    }
}

//: Demonstration: a place to demonstrate your creation
struct Student {
    let name: String
    let age: Int
}

let stackOfIntegers: Stack<Int> = Stack<Int>() // Using Generics has allowed us to hold a collection of anything we want to
print(stackOfIntegers.size())
stackOfIntegers.push(value: 1)
stackOfIntegers.push(value: 2)
stackOfIntegers.push(value: 3)
stackOfIntegers.push(value: 4)
print(stackOfIntegers.size())
stackOfIntegers.pop()
stackOfIntegers.pop()
stackOfIntegers.pop()
stackOfIntegers.pop()
print(stackOfIntegers.size())

let stackOfStudents = Stack<Student>()
let student1: Student = Student(name: "Prato Das", age: 19)
let student2: Student = Student(name: "Sumit Somani", age: 20)
let student3: Student = Student(name: "Moinuddin Sikander", age: 20)
stackOfStudents.push(value: student1)
stackOfStudents.push(value: student2)
stackOfStudents.push(value: student3)
print("Name of recent student is: " + (stackOfStudents.pop()?.name)!)
print("Name of recent student is: " + (stackOfStudents.pop()?.name)!)
print("Name of recent student is: " + (stackOfStudents.pop()?.name)!)


