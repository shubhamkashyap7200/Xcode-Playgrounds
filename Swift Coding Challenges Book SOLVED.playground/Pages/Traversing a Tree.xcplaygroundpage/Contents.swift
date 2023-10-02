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
    
    func traverse(_ body: (Node<T>)) -> Void {
        left?.traverse(body)
        body(self)
        right?.traverse(body)
    }
}
