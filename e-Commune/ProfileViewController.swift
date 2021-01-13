//
//  ProfileViewController.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/12/21.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var userEmailOutlet: UILabel!
    
    var userEmail: String = "USER NOT FOUND"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userEmailOutlet.text = userEmail
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
