//
//  detailsViewController.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet var moviesDetailsLabel: UILabel!
    @IBOutlet var moviesNameLabel: UILabel!
    @IBOutlet var moviesPointLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var selectedMovies : movies?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moviesNameLabel.text = selectedMovies?.name
        moviesDetailsLabel.text = selectedMovies?.details
        moviesPointLabel.text = selectedMovies?.point
        imageView.image = selectedMovies?.image

   
    }
    
    
}
