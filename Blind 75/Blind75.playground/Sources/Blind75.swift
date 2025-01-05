//
//  Blind75.swift
//
//
//  Created by Manikandan Bangaru on 1/4/25.
//
public protocol Blind75Protocol {
    func test(input: SampleInput)
    func run_default_samples()
}
public protocol Blind75TypeProtocol {
    func test(input: SampleInput)
    func run_default_samples()
}

public protocol SampleInput {}


public enum Blind75Type : Blind75Protocol {
    case b1_two_sum
    case b2_buy_sell_stock
    case b3_contains_duplicate
    case b4_product_of_array
    
    
    public func test(input: SampleInput) {
        switch self {
        case .b1_two_sum:
            B1_TwoSUM().test(input: input)
        case .b2_buy_sell_stock:
            B2_BuySellStock().test(input: input)
        case .b3_contains_duplicate:
            B3_Contains_Duplicate().test(input: input)
        case .b4_product_of_array:
            B4_ProdOfArr().test(input: input)
        }
    }
    
    public func run_default_samples() {
        switch self {
        case .b1_two_sum:
            B1_TwoSUM().run_default_samples()
        case .b2_buy_sell_stock:
            B2_BuySellStock().run_default_samples()
        case .b3_contains_duplicate:
            B3_Contains_Duplicate().run_default_samples()
        case .b4_product_of_array:
            B4_ProdOfArr().run_default_samples()
        }
    }
}
