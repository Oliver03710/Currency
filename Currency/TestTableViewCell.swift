//
//  TestTableViewCell.swift
//  Currency
//
//  Created by Junhee Yoon on 2022/07/27.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    static let identifier = "TestTableViewCell"

    @IBOutlet weak var sharingButton: UIButton! {
        didSet {
            sharingButton.setTitleColor(.red, for: .normal)
            sharingButton.layer.borderColor = UIColor.yellow.cgColor
            sharingButton.layer.borderWidth = 2
            sharingButton.clipsToBounds = true
            sharingButton.layer.cornerRadius = 2
        }
    }
    
    @IBOutlet weak var testLabel: UILabel! {
        didSet {
            testLabel.clipsToBounds = true
            testLabel.layer.cornerRadius = 4
            testLabel.layer.borderWidth = 8
            testLabel.layer.borderColor = UIColor.blue.cgColor
        }
    }
}
