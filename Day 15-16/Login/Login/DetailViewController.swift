//
//  DetailViewController.swift
//  Login
//
//  Created by Doğan Kılıç on 28/04/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var result: UITextView!
    
    var name = ""
    var surname = ""
    
    override func viewDidLoad() {
        print("geldims")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        result.text = "\(name) \(surname)"
    }
}
