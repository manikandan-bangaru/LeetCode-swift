import Foundation

//Blind-75 - Contains Duplicate - Leetcode 217 - Python
//
//input - [1,2,3,1]
//return - true
//input - [1,2,3,]
//return false

public class ContainsDuplicaiton
{
    public static func containsDup(_ nums : [Int])->Bool
    {
        var numVOcur = [Int : Int]()
        
        var set : Set<Int> = []
        for num in nums
        {
            print(numVOcur)
            numVOcur[num] =  (numVOcur[num] ?? 0) + 1
            if (numVOcur[num] ?? 0 ) > 1
            {
                return true
            }
        }
        return false
    }
    public static func containsDupUsingSet(_ nums : [Int]) -> Bool
    {
        var set : Set<Int> = []
        for num in nums
        {
            let resultDict = set.insert(num)
            if resultDict.inserted == false
            {
                return true
            }
        }
        return false
    }
   
}
