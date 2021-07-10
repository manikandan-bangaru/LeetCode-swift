import Foundation

public enum HeapType{
  case  min
   case max
}
public class Heap<T : Comparable>{
   
    var elements : [T] = [T]()
    var type : HeapType
    func compare( _ e1 : T ,_ e2 : T) -> Bool{
        
        switch(type){
        case .min :
            return e1 < e2 ? true : false
        case .max:
            return e1 > e2 ? true : false
        }
    }
  public  init(type: HeapType) {
        self.type = type
    }
    
    func parentIndex(of index : Int) -> Int{
        (index - 1) / 2
    }
    func leftChild(of index : Int) -> Int{
        (2 * index) + 1
    }
    func rightChild(of index : Int) -> Int{
        (2 * index) + 2
    }
    
    public func insert(node : T){
        self.elements.append(node)
        print("insertig node \(node)")
        print(elements)
        self.shiftUp(index: elements.count-1)
    }
    func shiftUp(index : Int){
        guard index > 0 else {
            return
        }
        
        let child = index
        let parent = self.parentIndex(of: child)
        if compare(elements[child] ,elements[parent] ){
            self.elements.swapAt(child,parent)
        }
        else{
            return
        }
        print(elements)
        shiftUp(index: parent)
    }
    public  func remove() -> T?{
        print("Deleting Node ")
        guard elements.count > 1 else{
            if elements.count == 1{
                return elements.removeLast()
            }
            return nil
        }
        self.elements.swapAt(0 , self.elements.count-1)
        let last = self.elements.removeLast()
        defer{
            shiftDown(index : 0)
        }
       return last
    }
    func shiftDown(index : Int){
        
        guard index < elements.count else{
            return
        }
        let parent = index
        var candt = parent
        let left = self.leftChild(of : parent)
        let right = self.rightChild(of : parent)
        
        if left < elements.count && compare(elements[left] ,elements[candt] ) {
            candt = left
        }
        if right < elements.count &&  compare(elements[right] ,elements[candt] ){
            candt = right
        }
        if parent == candt{
            return
        }
        print(elements)
        self.elements.swapAt(candt , parent)
        print(elements)
        shiftDown(index : candt)
        
    }
    public func printAll(){
        print(elements)
    }
    public func removeAt(index : Int) -> T?{
        guard index < elements.count else{
            return nil
        }
        if index == elements.count-1{
            return self.elements.removeLast()
        }else{
            self.elements.swapAt(index , elements.count-1)
        }
        defer{
            self.shiftDown(index : index)
            self.shiftUp(index : index)
        }
        return self.elements.removeLast()
    }
    
}
