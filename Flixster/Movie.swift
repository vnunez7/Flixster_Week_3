//
//  Movie.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/4/23.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let original_title: String
    let poster_path: URL
    let overview: String
    let vote_count: Float
    let vote_average: Float
    let popularity: Float
    let backdrop_path: URL
}

