//
//  ViewController.swift
//  Design
//
//  Created by Sestek on 9.03.2017.
//  Copyright © 2017 dnkilic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func clickBack(_ sender: UIButton) {
        webView.goBack()
    }
    @IBOutlet weak var webIndicator: UIActivityIndicatorView!
    
    @IBAction func clickNext(_ sender: UIButton) {
        webView.goForward()
    }
    @IBAction func clickLoad(_ sender: UIButton) {
        webIndicator.startAnimating()
        let url = NSURL (string: "https://www.google.co.in")
        let requestObj = URLRequest(url: url! as URL)
        webView.loadRequest(requestObj);
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webIndicator.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webIndicator.hidesWhenStopped = true
        webView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

