//
//  Movies.swift
//  DemarkeDemoProject
//
//  Created by Dilara Can on 6.04.2021.
//

import Foundation
import UIKit

class movies {
    
    var name : String
    var details : String
    var image: UIImage
    var point : String
    
    init(nameMovies :String , detailsMovies :String , pointMovies :String , imageMovies :UIImage )
    {
        name = nameMovies
        details = detailsMovies
        image = imageMovies
        point = pointMovies
        
    }
}
