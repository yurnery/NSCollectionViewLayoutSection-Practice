//
//  Section.swift
//  AppStore
//
//  Created by yeteam on 2019/10/9.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

protocol Section {
  var numberfOfItems: Int { get }
  func layoutSection() -> NSCollectionLayoutSection
  func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
