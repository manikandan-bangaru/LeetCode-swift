import Foundation

public class BinaryNode<T>{
    public var value : T
    public var right : BinaryNode<T>?
    public var left : BinaryNode<T>?
    public init(_ value : T){
        self.value = value
    }
    
}

extension BinaryNode {
    public  func inorderTraverse(visit : (BinaryNode<T>) -> Void){
        
        self.left?.inorderTraverse(visit : visit)
        visit(self)
        self.right?.inorderTraverse(visit : visit)
    }
    public  func preorderTraverse(visit : (BinaryNode<T>) -> Void){
        visit(self)
        self.left?.preorderTraverse(visit : visit)
        self.right?.preorderTraverse(visit : visit)
    }
    public func postorderTraverse(visit : (BinaryNode<T>) -> Void){
        self.left?.preorderTraverse(visit : visit)
        self.right?.preorderTraverse(visit : visit)
        visit(self)
    }
    public  func lvlorder(visit : (BinaryNode<T>) -> Void){
        
        visit(self)
        let queue = QueueLinkList<BinaryNode>()
        
        self.left != nil ? queue.enqueue(element: self.left!) : nil
        self.right != nil ? queue.enqueue(element : self.right!) : nil
         
        while let node = queue.dequeue(){
            visit(node)
            node.left != nil ? queue.enqueue(element : node.left!) : nil
            node.right != nil ? queue.enqueue(element : node.right!) : nil
        }
    }
    public  func dfs(visit : (BinaryNode) -> Void){
        
        visit(self)
        self.left?.dfs(visit : visit)
        self.right?.dfs(visit : visit)
    }
}
