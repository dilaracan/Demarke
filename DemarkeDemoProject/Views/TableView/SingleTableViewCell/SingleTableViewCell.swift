//
//  SingleTableViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 7.04.2021.
//

import UIKit

class SingleTableViewCell: UITableViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var imageview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setupCell(movie :movies) {
        label.text = movie.name
        imageview.image = movie.image
        
    }
    
}
