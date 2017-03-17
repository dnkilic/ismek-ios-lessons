//
//  ViewController.swift
//  Library
//
//  Created by Doğan Kılıç on 17/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBAction func deneme(_ sender: Any) {
        
        Alamofire.request("https://glosbe.com/gapi/translate?from=tr&dest=eng&format=json&phrase=\()&pretty=true").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
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
    
    /*
     */


}

