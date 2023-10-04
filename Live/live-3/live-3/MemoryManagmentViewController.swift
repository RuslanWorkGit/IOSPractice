//
//  memoryManagmentViewController.swift
//  live-3
//
//  Created by Ruslan Liulka on 04.10.2023.
//

import UIKit

class MemoryManagmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var myFriend = HumanClass()
        myFriend.name = "Tom"
        
        var myBrother = myFriend
        myBrother.name = "Bob"
        
    }

}

//Value type: Struct, Enum, extension

struct HumanStruct {
    var name: String = ""
}
//Reference type: Class, clouser (func)
  
class HumanClass {
    var name: String = ""
}
