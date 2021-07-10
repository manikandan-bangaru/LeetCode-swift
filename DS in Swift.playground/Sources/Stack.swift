import Foundation

public class Stack<Element>{
    
    var storage : [Element] = []
    public init(){
        
    }
    public func push(_ element : Element){
        storage.append(element)
    }
    public func pop(){
        storage.removeLast()
    }
}
extension Stack : CustomStringConvertible{
    public  var description : String{
        
        
        return storage.map{"\($0)"}.reversed().joined(separator : "\n")
    }
}
