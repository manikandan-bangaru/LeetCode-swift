import Foundation



public class BST<T : Comparable>{
    public var root : BinaryNode<T>?
    public init(){}
}
extension BST{
    public  func insert(_ value : T){
        root = insert(from : root , value : value)
    }
    public func insert(from node : BinaryNode<T>? , value : T) -> BinaryNode<T>{
        
        guard let node = node else{
            return BinaryNode(value)
        }
        
        if value < node.value {
            node.left = self.insert(from : node.left , value : value)
            
        }else{
            node.right = self.insert(from : node.right , value : value)
        }
        return node
    }
}
