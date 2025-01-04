//
//  1 Two Sum.swift
//
//
//  Created by Manikandan Bangaru on 1/4/25.
//

//1. Two Sum
//Easy

//Hint
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]

public struct B1_twoSumInput: SampleInput {
    public init(nums: [Int], target: Int) {
        self.nums = nums
        self.target = target
    }
    public let nums: [Int]
    public let target: Int
}

public struct B1_TwoSUM : Blind75TypeProtocol {
    public init () {
        print("----------Blind75 1.Two Sum----------------")
    }
    
    func twoSum(nums: [Int], target: Int) -> (Int,Int)  {
        guard nums.isEmpty == false else {
            print("Input array is empty")
            return (0,0)
        }
        var dict = [Int:Int]() // key will be remaining value , value: index
        
        for (index,value) in nums.enumerated() {
            if let previsousValueIndex = dict[value] {
                // Found the pair
                return (previsousValueIndex,index)
//                print("\(previsousValueIndex),\(index)")
            } else {
                dict[target - value] = index
            }
        }
        return (0,0)
    }
    
    public func run_default_samples() {
        let samples = [B1_twoSumInput(nums: [2,7,11,15], target: 9),
                       B1_twoSumInput(nums: [3,2,4], target: 6),
                       B1_twoSumInput(nums: [3,3], target: 6)]
        for (index, sample) in samples.enumerated() {
            print("\n   Runing Sample \(index+1)...")
            test(input: sample)
        }
    }
    
    public func test(input: SampleInput) {
        if let input = input as? B1_twoSumInput {
            print("\nnums: \(input.nums),target \(input.target)")
            print("output: \(twoSum(nums: input.nums, target: input.target))\n")
        } else {
            print("input is not B1_twoSumInput")
        }
    }
}
