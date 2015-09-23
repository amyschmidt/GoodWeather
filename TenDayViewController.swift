//
//  TenDayViewController.swift
//  GoodWeather
//
//  Created by Amy Schmidt on 9/23/15.
//  Copyright © 2015 Amy Schmidt. All rights reserved.
//

import UIKit

class TenDayViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let dayCell = tableView.dequeueReusableCellWithIdentifier("DayCell", forIndexPath: indexPath)
        
        dayCell.textLabel?.text = "Hello"
        dayCell.selectionStyle = .None
        
        return dayCell
    }
}
