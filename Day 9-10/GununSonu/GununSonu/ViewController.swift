//
//  ViewController.swift
//  GununSonu
//
//  Created by Doğan Kılıç on 24/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    var counter = 0
    let myList = [#imageLiteral(resourceName: "pic1"), #imageLiteral(resourceName: "pic2"), #imageLiteral(resourceName: "pic3"), #imageLiteral(resourceName: "pic4"), #imageLiteral(resourceName: "pic5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myImageView.image = myList[counter]
        myImageView.isUserInteractionEnabled = true
        
        let myLeftSwipeRecognizer = UISwipeGestureRecognizer.init(target: self, action: #selector(rightSwipe))
        myImageView.addGestureRecognizer(myLeftSwipeRecognizer)

        
        let myRightSwipeRecognizer = UISwipeGestureRecognizer.init(target: self, action: #selector(leftSwipe))
        myRightSwipeRecognizer.direction = UISwipeGestureRecognizerDirection.left
        myImageView.addGestureRecognizer(myRightSwipeRecognizer)
        
        let myThirdTapRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(thirdTap))
        myThirdTapRecognizer.numberOfTapsRequired = 3
        myImageView.addGestureRecognizer(myThirdTapRecognizer)
    }
    
    func thirdTap()
    {
        myImageView.animationImages = myList
        myImageView.animationDuration = 1
        myImageView.startAnimating()
    }
    
    func leftSwipe()
    {
        counter = counter - 1
        
        if counter == -1
        {
            counter = myList.count - 1
        }
        
        myImageView.image = myList[counter]
    }
    
    func rightSwipe()
    {
        counter = counter + 1
        
        if counter == myList.count
        {
            counter = 0
        }
        
        myImageView.image = myList[counter]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

