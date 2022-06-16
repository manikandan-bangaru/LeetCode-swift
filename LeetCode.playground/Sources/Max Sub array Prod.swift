import Foundation

public class MaxSubArrayProd
{
    public static func solution(_ nums : [Int]) -> Int
    {
//        [2,3,-2,4]
        var p = 0
        var sum = 1
        var result = 0
        while p < nums.count
        {
            sum = sum * nums[p]
            if sum > result
            { 
                result = sum
            }
            else if sum == 0
            {
                sum = 1
            }
            p = p + 1
        }
        return result
    }
}
