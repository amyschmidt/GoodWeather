//
//  HourlyWeatherViewController.swift
//  GoodWeather
//
//  Created by Amy Schmidt on 9/23/15.
//  Copyright © 2015 Amy Schmidt. All rights reserved.
//

import UIKit

class HourlyWeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK : UITableView Data Source and Delegate
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Time \tTemp \tHumidity \tWind \tPrecip"
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let hourCell = tableView.dequeueReusableCellWithIdentifier("HourCell", forIndexPath: indexPath)
        
        hourCell.textLabel?.text = "7:00P \t75º \t40% \t15MPH \t20% \t☀️"
        hourCell.selectionStyle = .None
        
        return hourCell
    }

}
