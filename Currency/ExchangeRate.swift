//
//  ExchangeRate.swift
//  Currency
//
//  Created by Junhee Yoon on 2022/07/27.
//

import Foundation

import UIKit

struct ExchangeRate {
    var currencyRate: Double {
        willSet {
            print("Currency Rate willSet - 환율 변동 예정: \(currencyRate) -> \(newValue)")
        }
        didSet {
            print("Currency Rate willSet - 환율 변동 예정: \(oldValue) -> \(currencyRate)")
        }
    }
    
    var USD: Double {
        willSet {
            print("USD willSet - 환전 금액: USD: \(newValue)달러로 환전될 예정")
        }
        didSet {
            print("USD didSet - KRW: \(KRW)원 -> \(USD)달러로 환전되었음")
        }
    }
    
    var KRW: Double {
        get {
            return USD * currencyRate
        }
        set {
            USD = newValue / currencyRate
        }
    }
}


