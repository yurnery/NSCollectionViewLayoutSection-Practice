//
//  CategoryCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/10.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var iconView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconView.layer.cornerRadius = iconView.bounds.height/2
    }

}
