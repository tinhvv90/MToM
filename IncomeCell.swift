//
//  IncomeCell.swift
//  MtoM Fake
//
//  Created by Tinh on 3/29/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class IncomeCell: TextCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor.headerColor()
        textContentLabel.font = UIFont.boldSystemFontOfSize(20)
        textContentLabel.textColor = UIColor.mainColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

