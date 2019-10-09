//
//  TodayTitleCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/9.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class TodayTitleCell: UICollectionViewCell {
    @IBOutlet weak private var iconView: UIView!
    @IBOutlet weak private var dateLabel: UILabel!
    
    var date: String? {
        didSet {
            dateLabel.text = date
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        iconView.layer.cornerRadius = iconView.bounds.width / 2
    }
    
}
