//
//  PopView.swift
//  MtoM Fake
//
//  Created by Tinh on 3/29/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit

class PopView: UIView {
    
    var coverButton = UIButton()
    var popBody = UIView()
    
    let line1 = UIView()
    let line2 = UIView()
    let line3 = UIView()
    
    var higherLabel = UILabel()
    var higherLabelTitle : String
    var lowerLabel = UILabel()
    var lowerLabelTitle: String
    
    var higherButton : PickerButton
    var lowerButton :  PickerButton
    var menuBT : MenuButton?
    
    var clickButton = UIButton()
    weak var vcPV : InformationVC?
    var tbv = TableView()
    
    init (higherButton: PickerButton, lowerButton: PickerButton, higherLabelTitle: String, lowerLabelTitle: String) {
        self.higherLabelTitle = higherLabelTitle
        self.lowerLabelTitle = lowerLabelTitle
        self.higherButton = higherButton
        self.lowerButton = lowerButton
        super.init(frame: CGRectZero)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.vcPV = InformationVC(popView: self)
        createPopFilter()
        super.layoutSubviews()
        higherButton.addTarget(self, action: "hideLowerButton", forControlEvents: UIControlEvents.TouchUpInside)
        lowerButton.addTarget(self, action: "hideHigherButton", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func hidePopView(sender: UIButton) {
        menuBT?.selected = false
    }
    
    func hideContainerPickerView() {
        higherButton.containerPickerView.removeFromSuperview()
        lowerButton.containerPickerView.removeFromSuperview()
    }
    
    func hideLowerButton() {
        lowerButton.hidePickerView()
    }
    func hideHigherButton() {
        higherButton.hidePickerView()
    }
    
}

