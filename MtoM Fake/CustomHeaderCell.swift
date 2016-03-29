//
//  CustomHeaderCell.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 2/28/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class CustomHeaderCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}