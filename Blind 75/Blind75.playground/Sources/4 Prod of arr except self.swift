//
//  4 Prod of arr except self.swift
//  
//
//  Created by Manikandan Bangaru on 1/5/25.
//
//Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
//
//The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
//
//You must write an algorithm that runs in O(n) time and without using the division operation.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,4]
//Output: [24,12,8,6]
//Example 2:
//
//Input: nums = [-1,1,0,-3,3]
//Output: [0,0,9,0,0]
// 

public struct B4_ProdOfArrInput: SampleInput {
    public init(nums: [Int]) {
        self.nums = nums
    }
    public let nums: [Int]
}

public struct B4_ProdOfArr : Blind75TypeProtocol {
    public init () {
        print("----------Blind75 \(type(of: self))----------------")
    }
    
    func solution(nums: [Int]) -> [Int]  {
        guard nums.isEmpty == false else {
            print("Input array is empty")
            return []
        }
        var result: [Int] = [Int](repeating:1 , count: nums.count)
//        prefix
        for i in 1...nums.count-1 {
            result[i] = result[i-1] * nums[i-1]
        }
        // post fix
        var postfix = 1
        for i in (0...nums.count-1).reversed() {
            result[i] = result[i] * postfix
            postfix *= nums[i]
        }
        return result
    }
    
    public func run_default_samples() {
        let samples = [B4_ProdOfArrInput(nums: [1,2,3,4]),
                       B4_ProdOfArrInput(nums: [-1,1,0,-3,3]),
                       B4_ProdOfArrInput(nums: [3,3])]
        for (index, sample) in samples.enumerated() {
            print("\n   Runing Sample \(index+1)...")
            test(input: sample)
        }
    }
    
    public func test(input: SampleInput) {
        if let input = input as? B4_ProdOfArrInput {
            print("\nnums: \(input.nums)")
            print("output: \(solution(nums: input.nums))\n")
        } else {
            print("input is not B1_twoSumInput")
        }
    }
}

