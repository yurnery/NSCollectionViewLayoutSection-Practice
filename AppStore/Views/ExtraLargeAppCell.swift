//
//  ExtraLargeAppCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/10.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class ExtraLargeAppCell: UICollectionViewCell {
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var thumbnailView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailView.layer.cornerRadius = 8
    }

}
