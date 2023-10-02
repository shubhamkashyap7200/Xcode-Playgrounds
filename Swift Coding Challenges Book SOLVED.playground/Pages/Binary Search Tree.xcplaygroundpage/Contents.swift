//: [Previous](@previous)

import Foundation

private class Node<T> {
    var key: T
    var left: Node<T>?
    var right: Node<T>?
    
    init(key: T) {
        self.key = key
    }
}

private class BinarySearchTree<T: Comparable> {
    var root: Node<T>?
    
    init(array: [T]) {
        for item in array {
            var placed = false
            
            if let rootNode = root {
                var tracker = rootNode
                
                while placed == false {
                    if item <= tracker.key {
                        if tracker.left == nil {
                            tracker.left = Node(key: item)
                            placed = true
                        }
                        
                        tracker = tracker.left!
                    } else {
                        if tracker.right == nil {
                            tracker.right = Node(key: item)
                            placed = true
                        }
                        
                        tracker = tracker.right!
                    }
                }
            } else {
                root = Node(key: item)
            }
        }
    }
}
