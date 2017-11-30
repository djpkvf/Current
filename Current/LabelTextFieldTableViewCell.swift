//
//  LabelTextFieldTableViewCell.swift
//  Current
//
//  Created by Dominic Pilla on 11/2/17.
//  Copyright © 2017 Murphy Basil Ward. All rights reserved.
//

import UIKit

class LabelTextFieldTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
