//
//  TestViewController.swift
//  Currency
//
//  Created by Junhee Yoon on 2022/07/27.
//

import UIKit

class TestViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var subTableView: UITableView!
    @IBOutlet weak var adView: UIImageView!
    
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(UINib(nibName: TestTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TestTableViewCell.identifier)
        
        subTableView.delegate = self
        subTableView.dataSource = self
        subTableView.register(UINib(nibName: AnotherTestTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: AnotherTestTableViewCell.identifier)
        
    }
    
    
    // MARK: - Helper Functions


}


// MARK: - Extension - UITableViewDelegate

extension TestViewController: UITableViewDelegate {
    
}


// MARK: - Extension - UITableViewDataSource

extension TestViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == mainTableView {
            return 10
        } else {
            return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == mainTableView {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.identifier, for: indexPath) as? TestTableViewCell else { return UITableViewCell() }
            
            cell.sharingButton.layer.borderColor = UIColor.red.cgColor
            cell.testLabel.layer.borderColor = UIColor.blue.cgColor
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: AnotherTestTableViewCell.identifier, for: indexPath) as? AnotherTestTableViewCell else { return UITableViewCell() }
            
            cell.choosingControl.layer.borderWidth = 2
            cell.choosingControl.layer.borderColor = UIColor.blue.cgColor
            
            cell.segmentedLabel.clipsToBounds = true
            cell.segmentedLabel.layer.cornerRadius = 4
            cell.segmentedLabel.layer.borderWidth = 4
            cell.segmentedLabel.layer.borderColor = UIColor.black.cgColor
            
            return cell
        }
    }
    
    
}
