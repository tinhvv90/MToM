//
//  SexViewController.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class SexViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var sexxLabel : [String] = {
        var result = [String]()
        result += ["Nam"]
        result += ["Nu"]
        
        
        return result
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.title = "Sex Place"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return sexxLabel.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SexTableViewCell
        cell.sexLabel.text = sexxLabel[indexPath.row]
        cell.sexLabel.roundBorder()
        cell.sexLabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.sexLabel.layer.borderWidth = 1
        cell.sexLabel.clipsToBounds = true
        
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
