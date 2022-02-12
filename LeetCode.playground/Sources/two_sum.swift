import Foundation

//https://leetcode.com/problems/two-sum/submissions/

//[2,3,4,11,15]
//sum 9
//array will be sorted
//return pair of indices [1,2]
import Foundation

public class TwoSum
{
    public static func twoSUmSortedArray(_ nums : [Int],_ target : Int) -> [Int]
    {
        var low = 0;
        var high = nums.count - 1 ;
        while(low < high)
        {
            if nums[low] + nums[high] == target
            {
                break;
            }
//            will start from last compound
            let last_comp = target - nums[high];
            
            if last_comp > 0 //(checking possible big values the target)
            {
                if last_comp > nums[low]
                {
                    low = low + 1 ;
                }
                else
                {
                    high = high - 1 ;
                }
            }
            else
            {
                //if value is bug then target increase high
                high = high - 1
            }
                
        }
        return [low,high]
    }
   public static func twoSum_unsorted(_ nums : [Int] ,_ target : Int) -> [Int]
    {
//        input [ 3 , 4 ,2 ,7 ]  sum 6
        var visitedElementMap = [Int : Int]()
        
        for (index,num) in nums.enumerated()
        {
            for visitedNode in visitedElementMap
            {
                if visitedNode.key + num == target
                {
                    return [visitedNode.value , index]
                }
            }
            visitedElementMap[num] = index
        }
        return []
    }
 
}
