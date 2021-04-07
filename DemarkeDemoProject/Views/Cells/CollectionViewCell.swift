//
//  CollectionViewCell.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 7.04.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell ,UICollectionViewDelegate , UICollectionViewDataSource {

    var myMovies: [movies] = []
    
    @IBOutlet var collectionViewCell: UICollectionView!
    @IBOutlet var collectionLabel: UILabel!
    @IBOutlet var collectionImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(movie: movies) {
        collectionImageView.image = movie.image
        collectionLabel.text = movie.name
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            let Cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
                return Cell
        }


    }
}
