import Foundation

public class QueueLinkList<T> : Queue{
    var linkList = LinkList<T>()
    public init(){}
    public func enqueue(element: T) {
        linkList.insertLast(element : element)
    }
    
    public func dequeue() -> T? {
        linkList.deleteFirst()
    }
    
    public func isEmpty() -> Bool {
        linkList.head == nil
    }
    
    public func peek() -> T? {
        linkList.head?.value
    }
    
    
}
