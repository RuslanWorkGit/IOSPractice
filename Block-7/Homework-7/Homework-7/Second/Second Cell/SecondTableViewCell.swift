//
//  SecondTableViewCell.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 27.10.2023.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nickNameLable: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var numberOfViewsLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var comentLabel: UILabel!
    
    @IBOutlet weak var postTimeLabel: UILabel!
    
    @IBOutlet weak var heartImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
        setupHeartImageTap()
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
    }
    
    func configure(with post: Post) {
        avatarImageView.image = UIImage(named: post.avatarImageName)
        nickNameLable.text = post.nickName
        mainImageView.image = UIImage(named: post.postImageName)
        numberOfViewsLabel.text = String(post.viewsCount) + " " + "views"
        descriptionLabel.text = post.nickName + " " + post.description
        comentLabel.text = String(post.countOfComments) + " " + "comments"
        postTimeLabel.text = post.postedAt
        
        
    }
    
    private func setupHeartImageTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(heartImageTapped))
        heartImage.isUserInteractionEnabled = true
        heartImage.addGestureRecognizer(tapGesture)
    }
    
    @objc private func heartImageTapped() {
        if heartImage.image == UIImage(systemName: "heart.fill") {
            heartImage.image = UIImage(systemName: "heart")
        } else {
            heartImage.image = UIImage(systemName: "heart.fill")
            heartImage.tintColor = .red
        }
    }

  
}
