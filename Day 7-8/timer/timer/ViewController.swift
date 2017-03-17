//
//  ViewController.swift
//  timer
//
//  Created by Doğan Kılıç on 16/03/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time=30
    var timer=Timer()
    @IBOutlet weak var lblYaz: UILabel!
    @IBAction func btnStart(_ sender: Any) {
        timer.invalidate()
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.kontrol), userInfo: nil, repeats: true)
    }
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func btnReset(_ sender: Any) {
        timer.invalidate()
        time=30
        lblYaz.text=String("30")
    }
    func kontrol(){
        time-=1;
        lblYaz.text=String(time)
        
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

