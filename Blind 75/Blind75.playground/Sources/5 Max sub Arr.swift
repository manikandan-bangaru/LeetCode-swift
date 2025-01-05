//
//  5 Max sub Arr.swift
//  
//
//  Created by Manikandan Bangaru on 1/5/25.
//

//Given an integer array nums, find the
//subarray
// with the largest sum, and return its sum.
//
// 
//
//Example 1:
//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: The subarray [4,-1,2,1] has the largest sum 6.
//Example 2:
//
//Input: nums = [1]
//Output: 1
//Explanation: The subarray [1] has the largest sum 1.
//Example 3:
//
//Input: nums = [5,4,-1,7,8]
//Output: 23
//Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
// 


public struct B5_MaxSubArrInput : SampleInput {
    public var nums: [Int]
    public init(nums: [Int]) {
        self.nums = nums
    }
}

public struct B5_MaxSubArr: Blind75TypeProtocol {
    typealias Input = B5_MaxSubArrInput
    
    func solution(nums: [Int]) -> Int  {
        guard nums.isEmpty == false else {
            print("Input array is empty")
            return 0
        }
        guard nums.count > 1 else {
            return nums[0]
        }
//        [-2,1,-3,4,-1,2,1,-5,4]
        var maxSum = 0
        var currSum = 0
        for i in 0...nums.count-1 {
            currSum += nums[i]
            maxSum = max(maxSum, currSum)
            if currSum <= 0 {
                currSum = 0
            }
        }
        return maxSum
    }
    
    public func run_default_samples() {
        let samples = [Input(nums: [-2,1,-3,4,-1,2,1,-5,4]),
                       Input(nums: [1]),
                       Input(nums: [5,4,-1,7,8])]
        for (index, sample) in samples.enumerated() {
            print("\n   Runing Sample \(index+1)...")
            test(input: sample)
        }
    }
    
    public func test(input: SampleInput) {
        if let input = input as? Input {
            print("\nnums: \(input.nums)")
            print("output: \(solution(nums: input.nums))\n")
        } else {
            print("input is not B1_twoSumInput")
        }
    }
    
}
