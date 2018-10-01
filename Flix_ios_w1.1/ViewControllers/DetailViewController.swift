//
//  DetailViewController.swift
//  Flix_ios_w1.1
//
//  Created by Jinan Huang on 9/9/18.
//  Copyright © 2018 Jinan Huang. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var PosterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overviewLabel.text = movie.overview
            
            let backdropPathString = "\(String(describing: movie.backdropUrl))"
            let posterPathString = "\(String(describing: movie.posterUrl))"
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            PosterImageView.af_setImage(withURL: posterPathURL)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
