//
//  MovieTableViewCell.swift
//  Homework-8v2
//
//  Created by Ruslan Liulka on 04.12.2023.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var originalTitle: UILabel!
    @IBOutlet weak var mediaTypeLabel: UILabel!
    @IBOutlet weak var popularytiLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var voteArrangeLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func downloadImage(from url: URL, variableName: UIImageView) {
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self else { return }

            if let error = error {
                // Handle the error (e.g., show an alert)
                print("Error downloading image: \(error)")
                return
            }

            DispatchQueue.main.async {
                if let data = data, let image = UIImage(data: data) {
                    variableName.image = image
                } else {
                    // Handle the scenario where image data couldn't be converted to a UIImage
                    // Perhaps set a default image
                }
            }
        }.resume()
    }
    
    func configure(with data: MovieInfo) {

        let basePath = "https://image.tmdb.org/t/p/w500"
        let url = URL(string: basePath + data.posterPath)
        if let url = url {
            downloadImage(from: url, variableName: posterImageView)
            //downloadImage(from: url)
        }
        
        titleLabel.text = data.title
        originalTitle.text = data.originalTitle
        mediaTypeLabel.text = data.mediaType.rawValue
        popularytiLabel.text = String(data.popularity)
        releaseDateLabel.text = data.releaseDate
        voteArrangeLabel.text = String(data.voteAverage)
        voteCountLabel.text = String(data.voteCount)
    }
 
    
}
