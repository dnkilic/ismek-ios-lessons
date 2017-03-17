//
//  ViewController.swift
//  EasyPeasy
//
//  Created by Doğan Kılıç on 10/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var webPage: UIWebView!
    
    @IBAction func nextClick(_ sender: UIButton) {
        webPage.goForward()
    }
    
    @IBAction func loadClick(_ sender: UIButton) {
        
        indicator.startAnimating()
        
        //let url = URL.init(string: "https://www.linkedin.com/")
        let nsUrl = NSURL.init(string: "https://www.linkedin.com/")
        let urlRequest = URLRequest.init(url: nsUrl! as URL)
        webPage.loadRequest(urlRequest)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.stopAnimating()
    }
    
    @IBAction func backClick(_ sender: UIButton) {
        webPage.goBack()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webPage.delegate = self
        indicator.hidesWhenStopped = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

