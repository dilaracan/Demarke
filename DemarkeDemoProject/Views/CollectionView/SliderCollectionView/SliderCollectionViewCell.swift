//
//  SliderCollectionViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class SliderCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet var sliderImageView: UIImageView!

    var mySlider: [Slider] = []
    var timer = Timer()
    var counter = 0
    
    
    static let identifier = "SliderCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "SliderCollectionViewCell", bundle: nil)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell( slider: Slider){

         sliderImageView.image = slider.image
     }
    
    }


