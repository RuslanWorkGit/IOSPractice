//
//  ViewController.swift
//  CustomUICollectionView
//
//  Created by Ruslan Liulka on 15.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionView: UICollectionView!
    let button = UIButton()
    var layout: UICollectionViewFlowLayout!
    
    //let source: [Photo] = Source.rundomPhoto(with: 15)
    
    let source: [SectionPhoto] = [
        SectionPhoto(sectionName: "first section", photos: Source.rundomPhoto(with: 15)),
        SectionPhoto(sectionName: "secont section", photos: Source.rundomPhoto(with: 15))]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        setupButton()
        
    }
    
    func setupCollectionView() {
        
        layout = setupFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            //collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)])
        
        collectionView.dataSource = self
        
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: "\(PhotoCell.self)")
        collectionView.register(HeaderReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(HeaderReusableView.self)")
        collectionView.backgroundColor = .lightGray
    }


    func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        
        //layout.itemSize = .init(width: 150 , height: 150)
//        layout.estimatedItemSize = .init(width: 100, height: 100)
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 30
        
        layout.sectionInset = .init(top: 30, left: 30, bottom: 30, right: 30)
        
        layout.headerReferenceSize = .init(width: view.frame.size.width, height: 60)
        return layout
    }
    
    func setupButton() {
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                button.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 8),
                button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                button.heightAnchor.constraint(equalToConstant: 64)
            ])
            
            button.setTitle("Change", for: .normal)
            button.setTitleColor(.black, for: .normal)
            
            //Action
            button.addTarget( self, action: #selector(buttonAction), for: .touchUpInside)
        }
        
        @objc func buttonAction() {
            layout.scrollDirection = layout.scrollDirection == .horizontal ? .vertical : .horizontal
            
            UIView.animate(withDuration: 1) {
                self.view.layoutIfNeeded() // Якщо інтерфейс потрібен в перемальовці ми це виконаємо
            }
        }

    
    
}


extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        source.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        source[section].photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(PhotoCell.self)", for: indexPath) as? PhotoCell else {
            return UICollectionViewCell()
        }
        
        //cell.imageView.image = UIImage(named: source[indexPath.item].imageName)
        cell.imageView.image = UIImage(named: source[indexPath.section].photos[indexPath.item].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "\(HeaderReusableView.self)", for: indexPath) as? HeaderReusableView else {
                return UICollectionReusableView()
            }
            view.titleLable.text = source[indexPath.section].sectionName
            return view
        default: return UICollectionReusableView()
        }
    }
    
     
}
