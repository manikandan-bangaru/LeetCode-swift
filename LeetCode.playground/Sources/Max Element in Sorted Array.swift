import Foundation


public class maximumInSortedArray
{
    
    
   static func maxElementIndex(_ nums : [Int] ,_ low : Int ,_ high : Int)->Int
    {
        print("mid Rotation - start")
        if low == high
        {
            return low
        }
        let mid = (low + high) / 2
        print("mid Rotation - \(mid)")
        if nums[mid] > nums[mid+1] && mid == 0 
        {
            return mid
        }
        
        
        if nums[low] < nums[mid]
        {
            print("right - low - \(low) , mid - \(mid+1) , high - \(high)")
            //GO right
           return maxElementIndex(nums, mid+1 , high)
            
        }else{ //go left
            print("left - low - \(low) , mid - \(mid-1) , high - \(high)")
           return maxElementIndex(nums, low , mid-1)
        }
    }
    //NUmber of time array rotated printing
    public static func solution(_ nums : [Int])->Int
    {
        let maxIndex = maxElementIndex(nums,0,nums.count-1)
        
        var rotations = nums.count - maxIndex + 1
        if rotations == 0
        {
            rotations = nums.count
        }
        print("num Rotation - \(rotations)")
        return 0
    }
}
