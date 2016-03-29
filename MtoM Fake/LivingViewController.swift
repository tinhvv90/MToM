//
//  LivingViewController.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class LivingViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var livLabel : [String] = {
        var result = [String]()
        result += ["Thai Binh"]
        result += ["Ha Noi"]
        result += ["TP HCM"]
        
        
        return result
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        
        
        self.navigationController?.navigationBarHidden = false
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.title = "Living Place"
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return livLabel.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! LivingTableViewCell
        cell.livingLabel.text = livLabel[indexPath.row]
        cell.livingLabel.roundBorder()
        cell.livingLabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.livingLabel.layer.borderWidth = 1
        cell.livingLabel.clipsToBounds = true
        
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
