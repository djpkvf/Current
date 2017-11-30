//
//  TextFieldTableViewCell.swift
//  Current
//
//  Created by Murphy Basil Ward on 7/1/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {

    @IBOutlet weak var myTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
