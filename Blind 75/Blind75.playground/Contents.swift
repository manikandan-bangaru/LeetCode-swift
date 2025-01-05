
print("--------------Blind 75----------------")


let blind75 = Blind75()

// first problem
// Run default samples
blind75.test(type: .b1_two_sum, input: B1_twoSumInput(nums: [1, 2, 3, 4, 5], target: 7))
blind75.run_default_samples(type: .b1_two_sum)

// second

blind75.test(type: .b2_buy_sell_stock, input: B2_BuySellStockInput(prices: [10,1,5,6,7,1]))
blind75.run_default_samples(type: .b2_buy_sell_stock)



