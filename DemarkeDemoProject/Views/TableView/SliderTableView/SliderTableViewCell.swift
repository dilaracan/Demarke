//
//  SliderTableViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class SliderTableViewCell: UITableViewCell {

    static let identifier = "SliderTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "SliderTableViewCell", bundle: nil)
        
    }
    
    func configure(with mySlider: [Slider]){
        self.mySlider = Slider
        collectionView.reloadData()
        
    }

    @IBOutlet var SliderCollectionView: UICollectionView!
    
    var mySlider = [Slider]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        SliderCollectionView.register(SliderCollectionViewCell.nib(), forCellWithReuseIdentifier: SliderCollectionViewCell.identifier)
        SliderCollectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
