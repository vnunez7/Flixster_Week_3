//
//  MovieCell.swift
//  Flixster
//
//  Created by Victoria Nunez on 3/4/23.
//

import Nuke
import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configure(with movie: Movie) {
        movieTitle.text = movie.original_title
        movieDescription.text = movie.overview
        
        
        Nuke.loadImage(with:URL(string:"https://www.themoviedb.org/t/p/w1280" + movie.poster_path.absoluteString)!, into: movieImageView)
    }
    
}
