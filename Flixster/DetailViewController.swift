//
//  DetailViewController.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieBackdropView: UIImageView!
    
    @IBOutlet weak var voterAverage: UILabel!
    @IBOutlet weak var voterCount: UILabel!
    
    
    @IBOutlet weak var popularityMovie: UILabel!
    
    @IBOutlet weak var movieDesc: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.backdrop_path.absoluteString)!, into: movieBackdropView)
        
        let x = movie.vote_count
        var myString = String(x)
        let y = movie.popularity
        var theString = String(y)
        let z = movie.vote_average
        var waString = String(z)
        
        movieTitleLabel.text = movie.original_title
        voterAverage.text = waString
        voterCount.text = myString
        popularityMovie.text = theString
        movieDesc.text = movie.overview

    }

}
