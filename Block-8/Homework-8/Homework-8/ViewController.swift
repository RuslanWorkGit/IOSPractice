//
//  ViewController.swift
//  Homework-8
//
//  Created by Ruslan Liulka on 22.11.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = self.getData() else { return }
        
        do {
            let decoder = JSONDecoder()
            let myData = try! decoder.decode(Company.self, from: data)
            print(myData.companyDescription ?? "nil ")
            if let firstDevice = myData.listOfData?.first?.modelNumber{
                print(firstDevice)
            }
            
            guard let firstDeviceCountrie = myData.listOfData?.first?.countries?.last else { return }
            print("Last countrie of first device is \(firstDeviceCountrie)")
            
            print("The price of last device is \(myData.listOfData?.last?.price?.regions?.first?.name ?? "none")")
            
            if let lastDevice = myData.listOfData?.last?.price?.regions?.last?.price {
                print(lastDevice)
            }
        } catch {
            
        }
    }
    
    private func getData() -> Data? {
        guard let url = Bundle.main.url(forResource: "RawData", withExtension: "json") else {
            return nil
        }
        
        do {
            let data = try! Data(contentsOf: url)
            return data
        }
        return nil
    }


}

