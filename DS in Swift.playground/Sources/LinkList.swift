import Foundation

public class Node<T>{
    public var value : T
    public var next : Node?
    public init( value : T ,next : Node? = nil ){
        self.value = value
    }
}


public class LinkList<T>{
    var head : Node<T>?
    var tail : Node<T>?
    init(){}
    
    func insertFirst(element : T){
        
        if head == nil{
            head = Node(value : element)
            tail = head
        }else{
            head = Node(value : element, next : head)
            
        }
    }
    func insertLast(element : T){
        if head == nil{
            insertFirst(element : element)
        }else{
            let newNode = Node(value : element)
            tail?.next = newNode
            tail = newNode
        }
    }
    func deleteFirst() -> T?{
        
        defer{ // post pond
            
            head = head?.next
        }
        return head?.value
    }
    func deleteLast() -> T?{
        defer{
            
            var previous = head
            var current = head
            
            while current?.next != nil{
                previous = current
                current = current?.next
            }
            tail = previous
        }
        
        return tail?.value
    }
}
