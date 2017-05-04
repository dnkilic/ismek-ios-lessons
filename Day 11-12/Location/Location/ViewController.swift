//
//  ViewController.swift
//  Location
//
//  Created by Sestek on 30.03.2017.
//  Copyright © 2017 dnkilic. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBAction func translate(_ sender: Any) {
    }
    
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var allLocations: UITextView!
    
    let locationManager = CLLocationManager()
    
    var currentLatitude = 0.0
    var currentLongtitude = 0.0
    
    @IBAction func requestLocation(_ sender: Any) {
        locationManager.requestLocation()
    }
    @IBAction func requestNearestPlaces(_ sender: Any) {
        
        if(currentLongtitude != 0.0 && currentLatitude != 0.0)
        {
        
            var base = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?"
            base = base + "location=\(currentLatitude),\(currentLongtitude)"
            base = base + "&radius=5000"
            base = base + "&key=AIzaSyDTNCoC-LErgrpYNSzUuIj1fdKTKtutWCk"
            
            let urlString = URL(string: base)

            if let url = urlString {
                let task = URLSession.shared.dataTask(with: url, completionHandler: {
                    (data, response, error) in
                    if error != nil {
                        print("\(error)")
                    } else {
                        if let usableData = data {
                            
                            let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                            
                            if let results = json["results"] as! [Any]?
                            {
                                var result = ""
                                
                                for index in 0..<results.count {
                                    
                                    var obj = results[index] as! [String:Any]
                                    
                                    if let name = obj["name"]
                                    {
                                        result = "\(result)\n\(name)"
                                        //print(name)
                                    }
                                }
                                
                                DispatchQueue.main.async(execute: {
                                    self.allLocations.text = result
                                    /* Do UI work here */
                                })
                                
                                
                                
                                //print(result)
                            }
                        }
                    }
                })
                task.resume()
            }
            
        }
        else
        {
            print("Bir problem var.")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            //locationManager.startUpdatingLocation()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        currentLatitude = locValue.latitude
        currentLongtitude = locValue.longitude
        currentLocationLabel.text = "\(locValue.latitude) \(locValue.longitude)"
        currentLocationLabel.sizeToFit()
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error")
    }
}

