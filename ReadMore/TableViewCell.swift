//
//  TableViewCell.swift
//  ReadMore
//
//  Created by Chung on 6/8/18.
//  Copyright © 2018 Chung. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nameTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        isSelected = false
    }
}
