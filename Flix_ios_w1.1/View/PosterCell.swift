//
//  PosterCell.swift
//  Flix_ios_w1.1
//
//  Created by Jinan Huang on 9/10/18.
//  Copyright © 2018 Jinan Huang. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
   
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            let posterPath = movie.posterUrl
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURLString = URL(string: baseURLString + posterPath)!
            
            posterImageView.af_setImage(withURL: posterURLString)
        }
    }
}
