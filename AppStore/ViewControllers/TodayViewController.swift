//
//  TodayViewController.swift
//  AppStore
//
//  Created by yeteam on 2019/10/9.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class TodayViewController: UIViewController {
    
    lazy var sections: [Section] = [
        TodayTitleSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        TodayAppSection(),
        ButtonSection(title: "Redeem"),
        ButtonSection(title: "Send Gift"),
        ButtonSection(title: "Add Funds to Apple ID"),
        TermsAndConditionSection()
    ]
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (index, environment) -> NSCollectionLayoutSection? in
            return sections[index].layoutSection()
        }
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.dataSource = self
        [TodayTitleCell.self, TodayAppCell.self, ButtonCell.self, TermsAndConditionCell.self].forEach {
            collectionView.register(UINib(nibName: $0.identifier, bundle: nil), forCellWithReuseIdentifier: $0.identifier)
        }
        return collectionView
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
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
    
}


extension TodayViewController: UICollectionViewDataSource {
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

extension TodayViewController: UICollectionViewDelegate {
    
}
