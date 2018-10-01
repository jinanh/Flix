//
//  Movie.swift
//  Flix_ios_w1.1
//
//  Created by Jinan Huang on 9/30/18.
//  Copyright © 2018 Jinan Huang. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var releaseDate: String
    var overview: String
    var backdropUrl: String
    var posterUrl: String
    
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        overview = dictionary["overview"] as? String ?? "No overview"
        backdropUrl = dictionary["backdrop_path"] as? String ?? "No background image"
        posterUrl = dictionary["poster_path"] as? String ?? "No poster"
        
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
    
}
