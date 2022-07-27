//
//  AnotherTestTableViewCell.swift
//  Currency
//
//  Created by Junhee Yoon on 2022/07/27.
//

import UIKit

class AnotherTestTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    static let identifier = "AnotherTestTableViewCell"

    @IBOutlet weak var choosingControl: UISegmentedControl! {
        didSet {
            print(#function)
        }
    }
    
    @IBOutlet weak var segmentedLabel: UILabel! {
        didSet {
            print(#function)

        }
    }
    
}
