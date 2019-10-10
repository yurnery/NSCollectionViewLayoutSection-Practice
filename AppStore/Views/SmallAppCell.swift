//
//  SmallAppCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/10.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class SmallAppCell: UICollectionViewCell {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var purchaseButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconView.layer.cornerRadius = 12
        purchaseButton.layer.cornerRadius = purchaseButton.bounds.size.height/2
    }

}
