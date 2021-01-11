//
//  ListingViewCell.swift
//  e-Commune
//
//  Created by Ryan Keys on 1/10/21.
//

import UIKit

class ListingViewCell: UITableViewCell {
    @IBOutlet weak var listingImage: UIImageView!
    
    @IBOutlet weak var listingTitle: UILabel!
    
    
    
    func setListing(listing: Listing) {
        listingImage.image = listing.image
        listingTitle.text = listing.title
    }
        
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
    

