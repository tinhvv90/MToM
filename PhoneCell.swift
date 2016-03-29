//
//  PhoneCell.swift
//  MtoM Fake
//
//  Created by Tinh on 3/29/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class PhoneCell: TextCell {
    
    override func layoutBodyCell() {
        super.layoutBodyCell()
        viewText.mt_InnerAlign(allSpace: 0)
        dashLine.removeFromSuperview()
        contentView.backgroundColor = UIColor.whiteColor()
    }
    
    override func prepareForReuse() {
        textContentLabel.textColor = UIColor.redColor()
    }
}

