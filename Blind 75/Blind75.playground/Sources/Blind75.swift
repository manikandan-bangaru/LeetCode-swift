//
//  Blind75.swift
//
//
//  Created by Manikandan Bangaru on 1/4/25.
//
public enum Blind75Type {
    case b1_two_sum
}

public protocol Blind75TypeProtocol {
    func test(input: SampleInput)
    func run_default_samples()
}

public protocol SampleInput {}

public protocol Blind75Protocol {
    func test(type: Blind75Type, input: SampleInput)
    func run_default_samples(type: Blind75Type)
}

public class Blind75: Blind75Protocol {
    public init() {}
    public func test(type: Blind75Type, input: SampleInput) {
        switch type {
        case .b1_two_sum:
            B1_TwoSUM().test(input: input)
        }
    }
    
    public func run_default_samples(type: Blind75Type) {
        switch type {
        case .b1_two_sum:
            B1_TwoSUM().run_default_samples()
        }
    }
}
