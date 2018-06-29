//
//  CellTableViewCell.swift
//  Table Cell
//
//  Created by Adam Moreno on 6/27/18.
//  Copyright © 2018 Adam Moreno. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var fail: UIButton!
    @IBOutlet weak var pass: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
