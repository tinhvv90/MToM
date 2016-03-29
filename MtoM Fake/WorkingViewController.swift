//
//  WorkingViewController.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/4/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class WorkingViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var workLabel : [String] = {
        var result = [String]()
        result += ["Ca Mau"]
        result += ["Ha Noi"]
        result += ["TP HCM"]
        
        
        return result
    }()

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.title = "Working Place"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return workLabel.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! WorkingTableViewCell
        cell.workingLabel.text = workLabel[indexPath.row]
        cell.workingLabel.roundBorder()
        cell.workingLabel.layer.borderColor = UIColor.borderColor().CGColor
        cell.workingLabel.layer.borderWidth = 1
        cell.workingLabel.clipsToBounds = true
        
        
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
