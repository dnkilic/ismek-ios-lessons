//
//  ViewController.swift
//  AutoLayout
//
//  Created by Doğan Kılıç on 29/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func simplest(_ sender: Any) {
        var base = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?"
        base = base + "location=\(41.001750),\(28.834367)"
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
                                }
                            }
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

