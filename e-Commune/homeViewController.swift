//
//  homeViewController.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/9/21.
//

import UIKit

class homeViewController:
    UIViewController {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var emailData: String = ""
    
    var indexOfCell: Int = 0

    var listings: [Listing] = []
    
    
    func createArray() -> [Listing] {
        var returnListings : [Listing] = []
        for i in 1...10 {
            returnListings.append(
                Listing(image: UIImage(named: "Arugula")!, title: "rugla \(i)"))
            
        }
        return returnListings

    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "Welcome \(emailData)!"
        listings = createArray()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller.
        if segue.identifier == "detailSegue" {
            let destinationController = segue.destination as! DetailViewController
            //Assign selected cell data to incoming ViewController.
            destinationController.receivedListing = listings[indexOfCell]
    
       }
        else if segue.identifier == "profileSegue" {
            let destinationController = segue.destination as! ProfileViewController
            destinationController.userEmail = emailData
        }
    }
    
}


//Event handling. Applicable for each cell.
extension homeViewController: UITableViewDataSource, UITableViewDelegate {
    //Creates a table cell for each item in listings.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listings.count
    }
    
    
    // assigns listing var to cell at specified idex.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listing = listings[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListingCell") as! ListingViewCell
        cell.setListing(listing: listing)
        return cell
    }
    
    //returns index of highlighted TableViewCell
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        indexOfCell = indexPath.row
    }
    
}
