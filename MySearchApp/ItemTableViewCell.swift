//
//  ItemTableViewCell.swift
//  MySearchApp
//
//  Created by 宮内諒太 on 2018/07/09.
//  Copyright © 2018年 宮内諒太. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemPriveLabel: UILabel!
    
    var itemUrl: String?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        itemImageView.image = nil
    }
}
