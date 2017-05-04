//
//  ViewController.swift
//  Hayvanlar
//
//  Created by Doğan Kılıç on 28/04/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func open(_ sender: Any) {
        
        if input.text != "azer" && input.text != "dn"
        {
            
        }
        else
        {
             performSegue(withIdentifier: "manuelSegue", sender: nil)
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let animalViewController = segue.destination as! AnimalViewController
        animalViewController.animalName = input.text!
    }
}


class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animal: UIImageView!
    
    var animalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(animalName)")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let im = UIImage.init(named: animalName)
        {
            animal.image = im
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

