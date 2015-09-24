//
//  CurrentWeatherModel.swift
//  GoodWeather
//
//  Created by Amy Schmidt on 9/23/15.
//  Copyright © 2015 Amy Schmidt. All rights reserved.
//

import Foundation

class CurrentWeatherModel: NSObject {
    
    var day: NSString?
    var date : NSString?
    var temp: NSNumber?
    var humidity : NSString?
    var wind : NSString?
    var precip : NSString?
    var feelsLike : NSString?
    
    init(day : NSString?, date : NSString?, temp : NSNumber?, humidity : NSString?, wind : NSString?, precip : NSString?, feelsLike : NSString?) {
        self.day = day ?? ""
        self.date = date ?? ""
        self.temp = temp
        self.humidity = humidity ?? ""
        self.wind = wind ?? ""
        self.precip = precip ?? ""
        self.feelsLike = feelsLike ?? ""
        
    }
}