//
//  ViewController.swift
//  JSON
//
//  Created by Ruslan Liulka on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centralTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        guard let data = self.getData() else { return }

        do {
            let decoder = JSONDecoder()
            let myData = try! decoder.decode(AllUsersData.self, from: data)
            self.centralTextLabel.text = "\(myData.responseData?.users?.first?.name)"
        } catch {

        }
        
    }

    
    private func getData() -> Data? {
        guard let url = Bundle.main.url(forResource: "UsersData",
                                        withExtension: "json") else {
            return nil
        }
        do {
            let data = try! Data(contentsOf: url)
            return data
        }
        return nil
    }

}

