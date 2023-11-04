//
//  Source.swift
//  Homework-7v2
//
//  Created by Ruslan Liulka on 04.11.2023.
//

import Foundation

struct Source {
    static func allPhotos() -> [Photo] {
        [
            .init(id: 1, imageName: "Anna"),
            .init(id: 2, imageName: "Arianda"),
            .init(id: 3, imageName: "Ariel"),
            .init(id: 4, imageName: "Boris"),
            .init(id: 5, imageName: "Jane"),
            .init(id: 6, imageName: "John"),
            .init(id: 7, imageName: "Kriss"),
            .init(id: 8, imageName: "Sam"),
            .init(id: 9, imageName: "Tessa"),
        ]
    }
    
    static func rundomPhoto(with count: Int) -> [Photo] {
        return (0..<count).map { _ in
            allPhotos().randomElement()!
        }
    }
    
}

struct Photo {
    let id: Int
    let imageName: String
}

struct SectionPhoto {
    let sectionName: String
    let photos: [Photo]
}
