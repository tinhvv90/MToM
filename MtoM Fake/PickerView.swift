//
//  PickerView.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 2/28/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class PickerView: UIView ,UIPickerViewDelegate {
    var pickerView = UIPickerView()
    
    weak var popView : PopView!
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    override func layoutSubviews() {
        createPickerView()
    }
    
    func hidePickerView(sender : AnyObject) {
        self.hidden = true
    }
    
    func createPickerView(){
        self.addSubview(pickerView)
        pickerView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        pickerView.delegate = self
        pickerView.selectRow(0, inComponent: 0, animated: true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}