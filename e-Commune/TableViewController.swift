//
//  TableViewController.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/10/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    var data: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = data
    }
    
}
