import Foundation

//Input: prices = [7,1,5,3,6,4]
//Output: 5
//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.


public class buyAndSellSolution
{
    struct Interval
    {
        var buy : Int
        var sell : Int
        init(_ buy : Int ,_ sell : Int)
        {
            self.buy = buy
            self.sell = sell
        }
    }

    static public func MaxProfitForStocks(_ stocks : [Int]) -> Int
    {
//        [7,1,5,3,6,4]
        
        var i = 0;
        let n = stocks.count
        var maxProfit = 0;
        print("stock count = \(n)")
        var Profits = [Interval]()
        while (i < n-1)
        {
            print("index = \(i)")
            while ((i < n-1) && (stocks[i+1] <= stocks[i]))
            {
                
                i = i + 1
                print("new buy index = \(i)")
            }
            let buy = i
            if i == n-1
            {
                break
            }
            i = i + 1
            while ((i < n) && (stocks[i] >= stocks[i-1]))
            {
                i = i + 1
                print("new sell index = \(i-1)")
            }
            let sell = i - 1
            
            let profit = stocks[sell] - stocks[buy]
            print("sell - buy =  \(stocks[sell]) - \(stocks[buy])  = \(profit)")
            Profits.append(Interval(stocks[buy],stocks[sell]))
            if maxProfit < profit
            {
                maxProfit = profit
            }
        }
        print("Max Profit = \(maxProfit)")
        return maxProfit
    }
}

