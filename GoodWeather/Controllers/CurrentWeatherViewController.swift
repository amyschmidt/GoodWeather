//
//  CurrentWeatherViewController.swift
//  GoodWeather
//
//  Created by Amy Schmidt on 9/23/15.
//  Copyright © 2015 Amy Schmidt. All rights reserved.
//

import Foundation
import UIKit

let APIKey : NSString = "86d6df5294db480a"

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var dayOfWeekLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var humidityTitleLabel: UILabel!
    @IBOutlet weak var humidityPercentageLabel: UILabel!
    @IBOutlet weak var windTitleLabel: UILabel!
    @IBOutlet weak var windMPHLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    
    var currentWeather : CurrentWeatherModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadWeatherData()
    }
    
    func loadWeatherData() {
        let currentWeatherPath = "https://api.wunderground.com/api/\(APIKey)/conditions/q/CA/San_Francisco.json"
        
        WUndergroundAPIManager.getWeatherDataFromAPIWithSuccess(currentWeatherPath, success: {(APIData) -> Void in
            let weatherJSON = JSON(data: APIData)
            
            self.currentWeather?.temp = weatherJSON["current_observation"]["temp_f"].number
            self.tempLabel.text = "\(self.currentWeather?.temp)"
            
        })
    }
}

