//
//  ViewController.swift
//  Calculator
//
//  Created by Doğan Kılıç on 10/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOne: UITextField!
    @IBOutlet weak var inputTwo: UITextField!
    @IBOutlet weak var result: UILabel!

    @IBAction func modulus(_ sender: UIButton) {
        if let firstInput = Int(inputOne.text!), let secondInput = Int(inputTwo.text!)
        {
            let calculation = firstInput % secondInput
            result.text = "Sonuç : \(calculation)"
        }
        else
        {
            let show = UIAlertController.init(title: "Uyarı", message: "Düzgün sayı gir", preferredStyle: .alert)
            show.addAction(UIAlertAction.init(title: "Kapat", style: .default, handler: nil))
            self.present(show, animated: true, completion: nil)
            print("******bozuk******")
        }
    }
    @IBAction func divide(_ sender: UIButton) {
    }
    @IBAction func multiply(_ sender: UIButton) {
    }
    @IBAction func minus(_ sender: UIButton) {
    }
    @IBAction func plus(_ sender: UIButton) {
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

