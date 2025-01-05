//
//  2 Best time to buy & sell stick.swift
//  
//
//  Created by Manikandan Bangaru on 1/5/25.
//

//Best Time to Buy and Sell Stock
//You are given an integer array prices where prices[i] is the price of NeetCoin on the ith day.
//
//You may choose a single day to buy one NeetCoin and choose a different day in the future to sell it.
//
//Return the maximum profit you can achieve. You may choose to not make any transactions, in which case the profit would be 0.
//
//Example 1:
//
//Input: prices = [10,1,5,6,7,1]
//
//Output: 6
//Explanation: Buy prices[1] and sell prices[4], profit = 7 - 1 = 6.
//
//Example 2:
//
//Input: prices = [10,8,7,5,2]
//
//Output: 0
//Explanation: No profitable transactions can be made, thus the max profit is 0.
//
//Constraints:
//
//1 <= prices.length <= 100
//0 <= prices[i] <= 100

public struct B2_BuySellStockInput: SampleInput {
    public init(prices: [Int]) {
        self.prices = prices
    }
    public let prices: [Int]
}

public struct B2_BuySellStock : Blind75TypeProtocol {
    public init () {
        print("----------Blind75 \(type(of: self))----------------")
    }
    
    func buysell(prices: [Int]) -> Int  {
        guard prices.isEmpty == false else {
            print("Input array is empty")
            return 0
        }
        var maxProfit = 0
        var p1 = 0 // 3 4 6 1 20
        var p2 = 1
        while p2 < prices.count {
            let curMin = prices[p1]
            let curMax = prices[p2]
            if prices[p1] < prices[p2] {
                let currProfit = prices[p2] - prices[p1]
                maxProfit = max(currProfit,maxProfit)
            } else {
                p1 = p2
            }
            p2 += 1
        }
        return maxProfit
    }
    
    public func run_default_samples() {
        let samples = [B2_BuySellStockInput(prices: [10,1,5,6,7,1]),
                       B2_BuySellStockInput(prices: [10,8,7,5,2]),
                       B2_BuySellStockInput(prices: [3,3,9])]
        for (index, sample) in samples.enumerated() {
            print("\n   Runing Sample \(index+1)...")
            test(input: sample)
        }
    }
    
    public func test(input: SampleInput) {
        if let input = input as? B2_BuySellStockInput {
            print("\nprices: \(input.prices)")
            print("profit: \(buysell(prices: input.prices))\n")
        } else {
            print("input is not B2_BuySellStockInput")
        }
    }
}
