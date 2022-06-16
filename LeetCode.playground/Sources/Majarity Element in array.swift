import Foundation

//Majarity Element in Array
//
//
//[3,2,3]

//func findMajarityElement(_ arr : [Int]) -> Int
//{
//    var map = [Int : Int]();
//    var max = 0;
//    var result = 0
//    for i in arr
//    {
//        map[i] = (map[i] ?? 0) + 1
//        if map[i] ?? 0 > max
//        {
//            max = map[i] ?? 0
//            result = i
//        }
//    }
//    return result
//}

//Best solution;-
//[2,3,1,2,2,1,2,5,2]
//2
//2
public func findMajarityOptimized(_ arr : [Int]) -> Int
{
    var ele = arr[0]
    var count = 1
    for i  in 1..<arr.count
    {
        if arr[i] == ele
        {
            count = count + 1
        }
        else
        {
            count = count - 1
        }
        if count == 0
        {
            ele = arr[i]
            count = 1
        }
    }
    return ele
}
