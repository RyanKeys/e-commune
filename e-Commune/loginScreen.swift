//
//  loginScreen.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/9/21.
//

import UIKit

class loginScreen: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo.layer.cornerRadius = 10
        logo.clipsToBounds = true
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func recvInputs(_ sender: Any, forEvent event: UIEvent) {
    
        print("Email: " + emailTextField.text!)
        print("Password: " + passwordTextField.text!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller.
        if segue.identifier == "homeSegue" {
            let destinationController = segue.destination as! homeViewController
            destinationController.emailData = emailTextField.text!
            
    
       }
    }
}


