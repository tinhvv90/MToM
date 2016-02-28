//
//  JobPopView.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 2/28/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class JobPopView: PopView {
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    override func createPopBody() {
        super.createPopBody()
        createCityLabel("Type")
        createProvinceLabel("Job")
    }
}
