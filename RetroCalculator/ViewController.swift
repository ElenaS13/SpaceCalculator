//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Mac on 8/8/16.
//  Copyright © 2016 ElenaSidyakina. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //We need to connect the sound file to the app.
        let path = Bundle.main.pathForResource("btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
        // Now to play a sound, we need a function
        
       @IBAction func numberPressed(sender: UIButton) {
            playSound()
    }
    
        
        func playSound() {
            if btnSound.isPlaying {
                btnSound.stop()
            }
            btnSound.play()
            
        }
        
    }




