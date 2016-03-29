//
//  ViewController.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startButton.roundBorder()
        self.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "ic_action_bar_indicator")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "ic_action_bar_indicator")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

