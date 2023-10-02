//: [Previous](@previous)

import Foundation

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var start: LinkedListNode<T>?
    var centerNode: LinkedListNode<T>? {
        var slow = start
        var fast = start
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}

var linkedListOne: LinkedList<Int> = [1, 2, 3, 4, 5]
