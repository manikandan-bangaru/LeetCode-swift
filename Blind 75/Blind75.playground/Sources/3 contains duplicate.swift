//
//  Untitled.swift
//  
//
//  Created by Manikandan Bangaru on 1/5/25.
//

//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,1]
//
//Output: true
//
//Explanation:
//
//The element 1 occurs at the indices 0 and 3.
//
//Example 2:
//
//Input: nums = [1,2,3,4]
//
//Output: false
//
//Explanation:
//
//All elements are distinct.
//
//Example 3:
//
//Input: nums = [1,1,1,3,3,4,3,2,4,2]
//
//Output: true

public struct B3_Contains_DuplicateInput: SampleInput {
    public init(nums: [Int]) {
        self.nums = nums
    }
    public let nums: [Int]
}

public struct B3_Contains_Duplicate : Blind75TypeProtocol {
    public init () {
        print("----------Blind75 \(type(of: self))----------------")
    }
    
    func isduplicated(nums: [Int]) -> Bool  {
        guard nums.isEmpty == false else {
            print("Input array is empty")
            return false
        }
        var set = Set<Int>() // key will be remaining value , value: index
        
        for value in nums {
            if set.contains(value) {
                // Found the pair
                return true
            } else {
                set.insert(value)
            }
        }
        return false
    }
    
    public func run_default_samples() {
        let samples = [B3_Contains_DuplicateInput(nums: [2,7,11,15]),
                       B3_Contains_DuplicateInput(nums: [3,2,4]),
                       B3_Contains_DuplicateInput(nums: [3,3])]
        for (index, sample) in samples.enumerated() {
            print("\n   Runing Sample \(index+1)...")
            test(input: sample)
        }
    }
    
    public func test(input: SampleInput) {
        if let input = input as? B3_Contains_DuplicateInput {
            print("\nnums: \(input.nums)")
            print("output: \(isduplicated(nums: input.nums))\n")
        } else {
            print("input is not B3_containsDupInput")
        }
    }
}
