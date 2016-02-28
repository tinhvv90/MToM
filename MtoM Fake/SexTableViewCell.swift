//
//  SexTableViewCell.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class SexTableViewCell: UITableViewCell {

    @IBOutlet weak var sexLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected{
            sexLabel.backgroundColor = UIColor.clickColor()
        }else{
            sexLabel.backgroundColor = UIColor.whiteColor()
        }
    }

}
