//
//  PickerViewController.swift
//  MtoM Fake
//
//  Created by Tinh Vu on 12/6/15.
//  Copyright © 2015 Tinh Vu. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var pickerButton: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    var AgePicker : [String] = {
       var result = [String]()
        var date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy"
        let cerrentYear = Int(formatter.stringFromDate(date))!
        
        for age in 15 ... 75 {
        
            var fromYear : Int!
            var toYear : Int!
            
                fromYear = cerrentYear - age
                fromYear = fromYear % 100
                toYear = (fromYear + 1) % 100
            
                let fromYearString = fromYear < 10 ? "0\(fromYear)" : "\(fromYear)"
                let toYearString = toYear < 10 ? "0\(toYear)" : "\(toYear)"
            
                result += ["\(age) Age (born in \(fromYearString) ~ \(toYearString))"]
        
        }
        return result
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerButton.roundBorder()
        self.edgesForExtendedLayout = UIRectEdge.None
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.title = "Picker Age"
        self.pickerView.selectRow(20, inComponent: 0, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return AgePicker.count
    }
    
    internal func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return AgePicker[row]
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
