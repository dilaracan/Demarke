//
//  MyCollectionViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 8.04.2021.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
     public func configure ( model: Model){
        myLabel.text = model.text
        myImageView.image = model.image
        
    }
    

}
