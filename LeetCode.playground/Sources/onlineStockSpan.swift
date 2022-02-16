import Foundation

//leetCode - 901.
//
//Write a class StockSpanner which collects daily price quotes for some stock, and returns the span of that stock's price for the current day.
//
//The span of the stock's price today is defined as the maximum number of consecutive days (starting from today and going backwards) for which the price of the stock was less than or equal to today's price.
//
//For example, if the price of a stock over the next 7 days were [100, 80, 60, 70, 60, 75, 85], then the stock spans would be [1, 1, 1, 2, 1, 4, 6].
//
//Example 1:
//
//Input: ["StockSpanner","next","next","next","next","next","next","next"], [[],[100],[80],[60],[70],[60],[75],[85]]
//Output: [null,1,1,1,2,1,4,6]
//Explanation:
//First, S = StockSpanner() is initialized.  Then:
//S.next(100) is called and returns 1,
//S.next(80) is called and returns 1,
//S.next(60) is called and returns 1,
//S.next(70) is called and returns 2,
//S.next(60) is called and returns 1,
//S.next(75) is called and returns 4,
//S.next(85) is called and returns 6.
//
//Note that (for example) S.next(75) returned 4, because the last 4 prices
//(including today's price of 75) were less than or equal to today's price.

//Ans:-
//stack [(100:1),(85:6)] -> o (2*n) -> o(n)
//
//70 -> 1 + 1 (popped 60:1)
//60->1
//75-> 1 + 1 (popped 60:1) + 2 (70:2) +
//85 -> 1 + 4 (popped 75) + 1 (popped 80) = 6
//span [1,1,1,2,1,4,6]
//[100,80,60,70,60,75,85]
//[1,1,1,2,1,4,6]
//
//1+ 1 + 2 = 4

//1 + 4 + 1 = 6
//
//o(n2)


public class OnlineStockSpan
{
    struct Pair
    {
        let span : Int
        let price : Int
        init(_ span : Int ,_ price : Int)
        {
            self.span = span
            self.price = price
        }
    }
    public static func stocksSpanfor(_ stocks : [Int])->[Int]?
    {
        guard stocks.count > 0 else
        {
            return nil
        }
        var stack = [Pair]()
        
        var result = [Int]()
        
        stack.append(Pair(1,stocks[0]))
        result.append(1)
        for stock in stocks[1..<stocks.count]
        {
            var topElement = stack[stack.count - 1]
            print(stock)
            var currentSpan = 1
            while topElement.price < stock
            {
                currentSpan = currentSpan + topElement.span
                stack.removeLast()
                topElement = stack[stack.count - 1]
            }
            result.append(currentSpan)
            stack.append(Pair(currentSpan , stock))
        }
        return result
        
    }
}
