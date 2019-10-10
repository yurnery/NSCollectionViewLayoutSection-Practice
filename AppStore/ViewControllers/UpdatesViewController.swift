//
//  UpdatesViewController.swift
//  AppStore
//
//  Created by yeteam on 2019/10/9.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class UpdatesViewController: UIViewController {
    
    
    lazy var sections: [Section] = [
        TitleSection(title: "Updated Recently"),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
        UpdatedAppSection(),
    ]
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .systemBackground
        collectionView.dataSource = self
        collectionView.delegate = self
        
        [TitleCell.self, UpdatedAppCell.self].forEach { (cellClass) in
            collectionView.register(UINib(nibName: cellClass.identifier, bundle: nil), forCellWithReuseIdentifier: cellClass.identifier)}
        
        return collectionView
    }()
    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }
        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
}


extension UpdatesViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections[section].numberfOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
    }
}

extension UpdatesViewController: UICollectionViewDelegate {}

