//
//  SliderTableViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import UIKit

class SliderTableViewCell: UITableViewCell {

    @IBOutlet var sliderImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupSliderCell(movie : movies){
        
        sliderImage.image = movie.image
    }
    
}
