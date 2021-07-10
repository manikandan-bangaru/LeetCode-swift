import Foundation


public class TreeNode<T> {
   public  var value : T
   public var childs : [TreeNode] = []
   public init(_ value : T)
    {
        self.value = value
    }
    
    public func add(_ child : TreeNode){
        self.childs.append(child)
    }
    
    
}

extension TreeNode {
    public func dfs( ){
        
        print(self.value)
        self.childs.forEach{ $0.dfs()}
    }
    public func dfs(visit : (TreeNode) -> Void){
        visit(self)
        self.childs.forEach{$0.dfs(visit : visit)}
    }
    public func levelOrder(visit : (TreeNode)->Void){
        
        visit(self)
        let queue = QueueLinkList<TreeNode>()
        self.childs.forEach{
            queue.enqueue(element : $0)
        }
        while let node = queue.dequeue(){
            visit(node)
            node.childs.forEach{
                queue.enqueue(element : $0)
            }
        }
    }
    
}
extension TreeNode where T : Equatable{
    public  func search(value : T) -> T?{
        var result : T?
        levelOrder(){
            if $0.value == value{
                result = $0.value
            }
        }
        return result
    }
}
