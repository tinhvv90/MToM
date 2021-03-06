//
//  InformationVC.swift
//  MtoM Fake
//
//  Created by Tinh on 3/29/16.
//  Copyright © 2016 Tinh Vu. All rights reserved.
//

import UIKit


class InformationVC: UIViewController{
    
    var tbv = TableView()
    var menuVC : Menu?
    var popView : PopView?
    
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuVC = Menu(vc: self, frame: CGRectZero)
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Job Search"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.hidesBackButton = true
        self.edgesForExtendedLayout = UIRectEdge.None
        layoutMenu()
        createTableView()
    }
    
    func layoutMenu() {
        view.addSubview(menuVC!)
        menuVC!.mt_innerAlign(left: 0, top: 0, right: 0, bottom: nil)
        menuVC!.mt_setHeight(60)
        menuVC!.backgroundColor = UIColor.darkGrayColor()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    MARK: - UITableView
    func createTableView() {
        self.view.addSubview(tbv)
        tbv.mt_innerAlign(left: 0, top: nil, right: 0, bottom: 0)
        tbv.mt_innerAlign(left: nil, top: (0, menuVC), right: nil, bottom: nil)
    }
}
