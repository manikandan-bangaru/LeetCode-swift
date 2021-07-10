import Foundation

public protocol Queue {
    associatedtype T
    func enqueue(element : T )
    func dequeue() -> T?
    func isEmpty() -> Bool
    func peek() -> T?
}
