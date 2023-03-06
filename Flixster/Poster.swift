//
//  Poster.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/15/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}
