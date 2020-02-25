//
//  ViewController.swift
//  MyWether
//
//  Created by Alexander on 25.02.2020.
//  Copyright © 2020 Alexander Litvinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var tempetureLabel: UILabel!
    @IBOutlet weak var appearentTempetureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        updateUIWith(currentWeather: currentWeather)
        
//        let urlString = "https://api.darksky.net/forecast/8510152572483ec690258a9e4eba4f0c/42.3601,-71.0589"
//        let baseURL = URL(string: "https://api.darksky.net/forecast/8510152572483ec690258a9e4eba4f0c/")
//        let fullURL = URL(string: "42.3601,-71.0589", relativeTo: baseURL)
//
//        let sessionConfiguration = URLSessionConfiguration.default
//        let session = URLSession(configuration: sessionConfiguration)
//
//        let request = URLRequest(url: fullURL!)
//        let dataTask = session.dataTask(with: fullURL!) { (data, response, error) in
//
//        }
//        dataTask.resume()
        
        
    }

    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.tempetureLabel.text = currentWeather.temperatureString
        self.appearentTempetureLabel.text = currentWeather.appearentTempatureString
        self.humidityLabel.text = currentWeather.humidityString



    }
}

extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
    
    var humidityString: String {
        return "\(Int(humidity))%"
    }
    
    var temperatureString: String {
        return "\(Int(temperature))˚C"
    }
    
    var appearentTempatureString: String {
        return "Feel like: \(Int(appearentTemperature))˚C"
    }
}









