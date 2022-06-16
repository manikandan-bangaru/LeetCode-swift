import Foundation


public class maxSubArraySum
{
    public static func solution(_ nums : [Int]) -> Int
    {
//        [-2,-1,0,3,2,4,-1,1]
        guard nums.count > 1 else{
            return 0
        }
        var result = 0
        var ptr = 0
        var sum = 0
        while ptr < nums.count
        {
             sum = nums[ptr] + sum
            if sum > result
            {
                result = sum
            }
            else if sum < 0{
                sum = 0
            }
            
            ptr = ptr + 1
        }
        return result
    }
}
