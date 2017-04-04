//
//  ViewController.swift
//  Network
//
//  Created by Sestek on 29.03.2017.
//  Copyright © 2017 sestek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBAction func getRequest(_ sender: Any) {
        let urlString = URL(string: "https://httpbin.org/get")
        
        if let url = urlString {
            var request = URLRequest.init(url: url)
            request.httpMethod = "GET"
            //request.httpBody = "".data(using: .utf8)
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
           // let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("\(error)")
                } else {
                    if let usableData = data {
                        
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                        
                        for (value, key) in json {
                            print("Val : \(value) Key : \(key) \n")
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    @IBAction func simpleRequest(_ sender: Any) {
        
        let urlString = URL(string: "https://httpbin.org/headers")
        
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("\(error)")
                } else {
                    if let usableData = data {
                        
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                        
                        if let origin = json["headers"] as! [String:String]?
                        {
                            print(origin["Connection"]!)
                            print(origin["Accept-Language"]!)
                            print(origin["Host"]!)
                            print(origin["Accept"]!)
                            print(origin["User-Agent"]!)
                            print(origin["Accept-Encoding"]!)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    @IBAction func simplestRequest(_ sender: Any) {
        
        let urlString = URL(string: "https://httpbin.org/ip")
        
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("\(error)")
                } else {
                    if let usableData = data {
                        
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:String]
                        
                        if let value = json["origin"]
                        {
                            print(value)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

