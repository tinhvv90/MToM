//
//  LivingTableViewCell.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class LivingTableViewCell: UITableViewCell {

    @IBOutlet weak var livingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected{
            livingLabel.backgroundColor = UIColor.clickColor()
        }else{
            livingLabel.backgroundColor = UIColor.whiteColor()
        }
        
    }

}
