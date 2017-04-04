//
//  ViewController.swift
//  AutoLayoutExampleOne
//
//  Created by Doğan Kılıç on 30/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    var currentLongtitude = 0.0
    var currentLatitude = 0.0
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        isAuthorizedtoGetUserLocation()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        }
    }
    @IBAction func getLocation(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    @IBOutlet weak var locationResult: UILabel!
    
    func isAuthorizedtoGetUserLocation() {
        
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse     {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("bi hata oldu")
    }

    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("geldim")
        let myCoordinates = manager.location!.coordinate
        let latitude = myCoordinates.latitude
        let longtitude = myCoordinates.longitude
        print("latitude \(latitude) Longtitude \(longtitude)")
        locationResult.text = "lat: \(latitude) lon: \(longtitude)"
        
        currentLatitude = latitude
        currentLongtitude = longtitude
    }
    
    
    @IBOutlet weak var placesResult: UITextView!
    @IBAction func listNearPlaces(_ sender: Any) {
        if(currentLongtitude != 0.0 && currentLatitude != 0.0)
        {
            var base = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?"
            base = base + "location=\(currentLatitude),\(currentLongtitude)"
            base = base + "&radius=10"
            base = base + "&key=AIzaSyDTNCoC-LErgrpYNSzUuIj1fdKTKtutWCk"
            
            
            
            let urlString = URL(string: base)
            
            if let url = urlString {
                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                        print("\(error)")
                    } else {
                        if let usableData = data {
                            
                            let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                            
                            if let results = json["results"] as! [Any]?
                            {
                                for index in 0..<results.count {
                                    
                                    var obj = results[index] as! [String:Any]
                                    
                                    if let name = obj["name"]
                                    {
                                        print(name)
                                        let deneme = name as! String
                                        self.result = self.result + deneme + "\n"
                                    }
                                }
                                
                                self.placesResult.text = self.result
                                
                                
                            }
                        }
                    }
                }
                task.resume()
            }
            
        }
        else
        {
            print("Bir problem var.")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("izinlerle ilgili bir durum")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

