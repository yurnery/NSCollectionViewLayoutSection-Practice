//
//  AppsViewController.swift
//  AppStore
//
//  Created by yeteam on 2019/10/9.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class AppsViewController: UIViewController {
    lazy var sections: [Section] = [
        FeaturedAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        MediumAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        CategorySection(),
        SectionTitleSection(),
        MediumAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(),
        SmallAppSection(),
        SectionTitleSection(showAllButton: false),
        LinkSection(title: "About In-App Purchases"),
        LinkSection(title: "Parens' Guide to the App Store"),
        LinkSection(title: "Apps and Games for Your Kids"),
        LinkSection(title: "About Personalization"),
        ButtonSection(title: "Redeem"),
        ButtonSection(title: "Send Gift"),
        ButtonSection(title: "Add Funds to Apple ID"),
        TermsAndConditionSection(),
    ]
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.collectionViewlLayout)
        collectionView.backgroundColor = .systemBackground
        collectionView.dataSource = self
        collectionView.delegate = self
        
        [SmallAppCell.self,
         MediumAppCell.self,
         ExtraLargeAppCell.self,
         CategoryCell.self,
         SectionTitleCell.self,
         LinkCell.self,
         ButtonCell.self,
         TermsAndConditionCell.self].forEach { (cellClass) in
            collectionView.register(UINib(nibName: cellClass.identifier, bundle: nil), forCellWithReuseIdentifier: cellClass.identifier)}
        
        return collectionView
    }()
    
    lazy var collectionViewlLayout: UICollectionViewCompositionalLayout = {
        return UICollectionViewCompositionalLayout { (sectionIndex, env) -> NSCollectionLayoutSection? in
            return self.sections[sectionIndex].layoutSection()
        }
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

extension AppsViewController: UICollectionViewDataSource {
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

extension AppsViewController: UICollectionViewDelegate {}




