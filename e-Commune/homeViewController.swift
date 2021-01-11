//
//  homeViewController.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/9/21.
//

import UIKit

class homeViewController:
    UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    
    var data: String = ""
    
    var listings: [Listing] = []
    

   
    
    func createArray() -> [Listing] {
        var returnListings : [Listing] = []
        for _ in 1...10 {
            returnListings.append(
                Listing(image: UIImage(named: "Arugula")!, title: "rugla"))
            
        }
        print(listings)
        
        return returnListings
        
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = data
        listings = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension homeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listing = listings[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListingCell") as! ListingViewCell
        cell.setListing(listing: listing)
        return cell
    }
}
