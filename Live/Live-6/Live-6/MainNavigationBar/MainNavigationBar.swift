//
//  MainNavigationBar.swift
//  Live-6
//
//  Created by Ruslan Liulka on 17.10.2023.
//

import Foundation

protocol MainNavigationBarDelegate {
    func navigationBarButtonPressed()
}

class MainNavigationBar: BaseUI {
    
    var delegate: MainNavigationBarDelegate?
    
    @IBAction func centralButtonPressed(_ sender: Any) {
        
        delegate?.navigationBarButtonPressed()
        
    }
    

}


