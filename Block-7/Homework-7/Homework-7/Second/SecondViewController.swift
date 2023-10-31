//
//  SecondViewController.swift
//  Homework-7
//
//  Created by Ruslan Liulka on 27.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let danInfo = Post(avatarImageName: "dan", postImageName: "danImage", viewsCount: 235, description: danDescription, countOfComments: 21, postedAt: "3 hours ago", nickName: "dan_usa")
    
    let annaDeArmasInfo = Post(avatarImageName: "annaDeArmas", postImageName: "annaDeArmasImage", viewsCount: 479178, description: annaDeArmosDescription, countOfComments: 7490, postedAt: "45 minutes ago", nickName: "anna_de_armas")
    
    let chanInfo = Post(avatarImageName: "chan", postImageName: "chanImage", viewsCount: 31, description: chanDescription, countOfComments: 4, postedAt: "1 days ago", nickName: "chan_chi")
    
    let annaInfo = Post(avatarImageName: "anna", postImageName: "annaImage", viewsCount: 4134, description: annaDescription, countOfComments: 56, postedAt: "2 hour ago", nickName: "anna")
    
    let alexaInfo = Post(avatarImageName: "alexa", postImageName: "alexaImage", viewsCount: 489, description: alexaDescription, countOfComments: 98, postedAt: "43 minutes ago", nickName: "alex_alexa")
    
    var arrayOfPost: [Post] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfPost.append(danInfo)
        arrayOfPost.append(annaInfo)
        arrayOfPost.append(annaDeArmasInfo)
        arrayOfPost.append(chanInfo)
        arrayOfPost.append(alexaInfo)
        tableView.reloadData()

        let nib = UINib(nibName: "SecondTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "SecondTableViewCell")
        }

}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell") as! SecondTableViewCell
        cell.configure(with: arrayOfPost[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
}
