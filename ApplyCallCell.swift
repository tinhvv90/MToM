//
//  ApplyCallCell.swift
//  MtoM Fake
//
//  Created by Tinh on 3/29/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class ApplyCallCell: DetailsCell {
    override func LayoutOfDetailsCell() {
        detailView.mt_innerAlign(left: 8, top: 0, right: 8, bottom: 0)
        detailView.backgroundColor = UIColor.whiteColor()
        detailView.addSubview(detailButton)
        detailButton.mt_innerAlign(left: 32, top: 8, right: 32, bottom: 8)
        setupDetailButton()
        contentView.backgroundColor = UIColor.whiteColor()
    }
    override func setupDetailButton() {
        detailButton.backgroundColor = UIColor.redColor()
        detailButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
}

