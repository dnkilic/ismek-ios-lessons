//
//  ViewController.swift
//  Image2
//
//  Created by Doğan Kılıç on 24/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        let myRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(tap))
        myRecognizer.numberOfTapsRequired = 5
        imageview.addGestureRecognizer(myRecognizer)
        
        let myLongPressRecognizer = UILongPressGestureRecognizer.init(target: self, action: #selector(longPress))
        imageview.addGestureRecognizer(myLongPressRecognizer)
        
        let mySwipeRecognizer = UISwipeGestureRecognizer.init(target: self, action: #selector(swipe))
        mySwipeRecognizer.direction = UISwipeGestureRecognizerDirection.up
        imageview.addGestureRecognizer(mySwipeRecognizer)
        
    }
    
    func swipe()
    {
        print("Ayağımı kaydırdılar!")
    }
    
    func tap()
    {
        print("Merhaba bana dokundular!")
    }
    
    func longPress()
    {
        print("Bana uzun dokundular!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

