//
//  SliderTableViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class SliderTableViewCell: UITableViewCell{
    
    @IBOutlet var sliderImageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var sliderCollectionView: UICollectionView!
    
    var mySlider: [Slider] = []
    var timer = Timer()
    var counter = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
