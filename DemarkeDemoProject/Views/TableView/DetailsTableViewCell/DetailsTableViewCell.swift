//
//  DetailsTableViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

    @IBOutlet var detailsImageView: UIImageView!
    
    @IBOutlet var detailsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(movie :movies) {
        detailsLabel.text = movie.name
        detailsImageView.image = movie.image
        
    }
    
}
