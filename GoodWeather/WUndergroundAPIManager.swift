//
//  WUndergroundAPIManager.swift
//  GoodWeather
//
//  Created by Amy Schmidt on 9/23/15.
//  Copyright © 2015 Amy Schmidt. All rights reserved.
//

import Foundation

class WUndergroundAPIManager {
    
    //MARK : Get JSON response from Weather Underground API
    class func getWeatherDataFromAPIWithSuccess(URL: String, success: ((WeatherData: NSData!) -> Void)) {
        loadWeatherDataFromURL(NSURL(string: URL)!, completion:{(weatherData, error) -> Void in
            if let weatherData = weatherData {
                success(WeatherData: weatherData)
            }
        })
    }
    
    class func loadWeatherDataFromURL(url: NSURL, completion:(weatherData: NSData?, error: NSError?) -> Void) {
        let session = NSURLSession.sharedSession()
        
        // Use NSURLSession to get data from an NSURL
        let loadWeatherData = session.dataTaskWithURL(url, completionHandler: { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if let responseError = error {
                completion(weatherData: nil, error: responseError)
            } else if let httpResponse = response as? NSHTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    let statusError = NSError(domain:"com.raywenderlich", code:httpResponse.statusCode, userInfo:[NSLocalizedDescriptionKey : "HTTP status code has unexpected value."])
                    completion(weatherData: nil, error: statusError)
                } else {
                    completion(weatherData: data, error: nil)
                }
            }
        })
        loadWeatherData.resume()
    }
}