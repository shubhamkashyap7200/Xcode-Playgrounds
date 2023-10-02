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
    
    
    func printNodes() {
        var currentNode = start
        
        while let node = currentNode {
            print(node.value, terminator: " ")
            currentNode = node.next
        }
    }
}

var list = LinkedList<Character>()
var previousNode: LinkedListNode<Character>? = nil

for char in "abcdefghijklmnopqrstuvwxyz" {
    let node = LinkedListNode(value: char)
    
    if let predecessor = previousNode {
        predecessor.next = node
    } else {
        list.start = node
    }

    previousNode = node
}

list.printNodes()
