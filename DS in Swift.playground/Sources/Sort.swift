import Foundation


public class Sort{
   public static func quickSort<T : Comparable >(_ arr : [T]) -> [T]{
        if arr.count == 0 || arr.count == 1{
            return arr
        }
        let pivot = arr[arr.count/2]
        let leftSideArr = arr.filter{$0 < pivot}
        let rightSideArr = arr.filter{$0 > pivot}
        let pivotValue = [pivot]
        return quickSort(leftSideArr) + pivotValue + quickSort(rightSideArr)
    }
}
