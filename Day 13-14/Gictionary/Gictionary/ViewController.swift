//
//  ViewController.swift
//  Gictionary
//
//  Created by Doğan Kılıç on 13/04/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDelegate, iCarouselDataSource {
    
    @IBOutlet weak var destView: UIView!
    @IBOutlet weak var fromView: UIView!
    
    var fromStr:String = ""
    var destStr:String = ""
    
    var countries = ["ar": #imageLiteral(resourceName: "flag_arabia.9"), "hy": #imageLiteral(resourceName: "flag_armenia.9"), "bs": #imageLiteral(resourceName: "flag_bosnia.9"), "bg": #imageLiteral(resourceName: "flag_bulgaria.9"), "zh":#imageLiteral(resourceName: "flag_china.9"), "fr" :#imageLiteral(resourceName: "flag_france.9"),"de": #imageLiteral(resourceName: "flag_germany.9"), "el":#imageLiteral(resourceName: "flag_greece.9"), "hi":#imageLiteral(resourceName: "flag_india.9"), "fa":#imageLiteral(resourceName: "flag_iran.9"), "he":#imageLiteral(resourceName: "flag_israel.9"), "it" :#imageLiteral(resourceName: "flag_italy.9"),"ja" :#imageLiteral(resourceName: "flag_japan.9"),"ur" :#imageLiteral(resourceName: "flag_pakistan.9"),"pt":#imageLiteral(resourceName: "flag_portugal.9"), "ru": #imageLiteral(resourceName: "flag_russia.9") ,"es" :#imageLiteral(resourceName: "flag_spain.9"),"sv":#imageLiteral(resourceName: "flag_sweden.9"), "tr" :#imageLiteral(resourceName: "flag_turkey.9"),"en" :#imageLiteral(resourceName: "flag_uk.9"),"ku":#imageLiteral(resourceName: "flag_kurdistan.9")]
    
    @IBOutlet weak var phrase: UITextField!
    
    @IBOutlet weak var translationResult: UITextView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let carousel = iCarousel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        carousel.dataSource = self
        carousel.delegate = self
        carousel.tag = 1
        carousel.type = .coverFlow
        fromView.addSubview(carousel)
        
        let secondCarousel = iCarousel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        secondCarousel.dataSource = self
        secondCarousel.delegate = self
        secondCarousel.tag = 2
        secondCarousel.type = .coverFlow
        destView.addSubview(secondCarousel)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background")!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return countries.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let imageView: UIImageView
        
        if view != nil {
            imageView = view as! UIImageView
        } else {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 66, height: 66))
        }
        
        
        let value = Array(countries.values)[index] as UIImage
        
        imageView.image = value
        
        return imageView
    }
    
    func carouselDidEndScrollingAnimation(_ carousel: iCarousel) {
        
        if carousel.tag == 1
        {
            let from = Array(countries.keys)[carousel.currentItemIndex]
            print(from)
            fromStr = from
        }
        else
        {
            let dest = Array(countries.keys)[carousel.currentItemIndex]
            print(dest)
            destStr = dest
        }
    }
    
    
    
    @IBAction func translate(_ sender: Any) {
        
        let phraseStr = phrase.text!
        
        let base = "https://glosbe.com/gapi/translate?from=\(fromStr)&dest=\(destStr)&format=json&phrase=\(phraseStr)&pretty=true"
        
        let stringUrl = URL.init(string: base)
        
        
        if let url = stringUrl {
            
            let task = URLSession.shared.dataTask(with: url, completionHandler: {
                (data, response, error) in
                
                if(error == nil)
                {
                    if let usableData = data
                    {
                        let json = try! JSONSerialization.jsonObject(with: usableData, options: []) as! [String:Any]
                        
                        if let tuc = json["tuc"] as! [Any]?
                        {
                            var resultStr = ""
                            
                            for element in 0..<tuc.count
                            {
                                var obj = tuc[element] as! [String:Any]
                                if let phrase = obj["phrase"] as! [String:String]?
                                {
                                    if let text = phrase["text"]
                                    {
                                        resultStr = "\(resultStr)\n\(text)"
                                        
                                    }
                                    else
                                    {}
                                }
                                else
                                {}
                            }
                            
                            DispatchQueue.main.async(execute: {
                                self.translationResult.text = resultStr
                                
                            })
                        }
                        else
                        {
                            //tuc boş
                        }
                    }
                    else
                    {
                        //data boş nil
                    }
                }
                else
                {
                    // Error var!
                }
            })
            task.resume()
        }
        else
        {
            //URL yanlış
        }
    }
}

