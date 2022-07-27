//
//  ViewController.swift
//  Currency
//
//  Created by Junhee Yoon on 2022/07/27.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var rate = ExchangeRate(currencyRate: 1100, USD: 1)
        
        rate.KRW = 500000
        rate.currencyRate = 1350
        rate.KRW = 500000
    }


}

