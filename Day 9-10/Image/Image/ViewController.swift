//
//  ViewController.swift
//  Image
//
//  Created by Doğan Kılıç on 24/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBAction func alpha05(_ sender: Any) {
        imageview.alpha = 0.5
    }
    
    @IBAction func alpha1(_ sender: Any) {
        imageview.alpha = 1
    }
    
    @IBAction func alpha0(_ sender: Any) {
        imageview.alpha = 0
    }
    
    @IBAction func anim2(_ sender: Any) {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:
            {self.imageview.alpha = 1}, completion: nil)
    }
    
    @IBAction func anim1(_ sender: Any) {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:
            {self.deneme()}, completion:
            {
                (Bool) -> Void in
                if self.imageview.image == UIImage(named : "sunset")
                {
                    self.imageview.image = #imageLiteral(resourceName: "sunrise")
                }
                else
                {
                    self.imageview.image = #imageLiteral(resourceName: "sunset")
                }

                UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:
                    {self.imageview.alpha = 1}, completion: nil)
            }
        )
    }
    
    func deneme () {
        self.imageview.alpha = 0.0
    }
    
    func merhaba() {
        if imageview.image == UIImage(named : "sunset")
        {
            imageview.image = #imageLiteral(resourceName: "sunrise")
        }
        else
        {
            imageview.image = #imageLiteral(resourceName: "sunset")
        }

    }
    
    
    @IBAction func change(_ sender: Any) {
        if imageview.image == UIImage(named : "sunset")
        {
            imageview.image = #imageLiteral(resourceName: "sunrise")
        }
        else
        {
            imageview.image = #imageLiteral(resourceName: "sunset")
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

