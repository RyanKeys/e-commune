//
//  DetailViewController.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/11/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var imgData: UIImageView!
    
    var receivedListing = Listing(image: UIImage(named: "Arugula")!, title: "ERROR... Listing not found :c")
    override func viewDidLoad() {
        super.viewDidLoad()
        response.text = receivedListing.title
        imgData.image = receivedListing.image

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
