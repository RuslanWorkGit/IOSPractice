//
//  File.swift
//  Homework-8
//
//  Created by Ruslan Liulka on 22.11.2023.
//

import Foundation

struct Company: Codable {
    var count: Int?
    var companyDescription: String?
    var listOfData: [Device]?
}

struct Device: Codable {
    var name: String?
    var modelNumber: String?
    var countries: [String]?
    var price: PriceInfo?
    var year: Int?
}

struct PriceInfo: Codable {
    var regions: [RegionPrice]?
}

struct RegionPrice: Codable {
    var name: String?
    var price: Int?
}
