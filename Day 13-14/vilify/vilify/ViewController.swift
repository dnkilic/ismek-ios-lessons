//
//  ViewController.swift
//  vilify
//
//  Created by Doğan Kılıç on 20/04/2017.
//  Copyright © 2017 Doğan Kılıç. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var cover: UIImageView!
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
        
    }
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    @IBAction func replay(_ sender: UIButton) {
      
        player.currentTime=0
        player.prepareToPlay()
        player.play()
            }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
        
        do{
       
            try player =  AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: audioPath!))
       
        }
        catch
        {
            print("eyvah!")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

