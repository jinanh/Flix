//
//  MovieCell.swift
//  Flix_ios_w1.1
//
//  Created by Jinan Huang on 9/5/18.
//  Copyright © 2018 Jinan Huang. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            let title = movie.title
            let overview = movie.overview
            let posterPath = movie.posterUrl
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            let posterURLString = URL(string: baseURLString + posterPath)!
            
            titleLabel.text = title
            overviewLabel.text = overview
            posterImageView.af_setImage(withURL: posterURLString)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
