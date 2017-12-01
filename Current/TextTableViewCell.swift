//
//  TextTableViewCell.swift
//  Current
//
//  Created by Murphy Basil Ward on 6/29/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    @IBOutlet weak var myTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
