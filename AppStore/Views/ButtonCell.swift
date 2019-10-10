//
//  ButtonCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/10.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    
    var title: String? {
        didSet {
            button.setTitle(title, for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        button.layer.cornerRadius = 8
    }

}
