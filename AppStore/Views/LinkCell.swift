//
//  LinkCell.swift
//  AppStore
//
//  Created by yeteam on 2019/10/10.
//  Copyright © 2019 weiwenshe. All rights reserved.
//

import UIKit

class LinkCell: UICollectionViewCell {
    @IBOutlet weak var titleLable: UILabel!
    
    var title: String? {
        didSet{
            titleLable.text = title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
