//
//  ViewController.swift
//  Timer
//
//  Created by Adam Jackrel on 4/2/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let toastTimes = ["light": 5, "golden": 8, "burnt": 11]
    
    var timer = Timer()
    
    let toastSelector: String = "light"
    
    var totalTime: Float = 0
   
    var secondsPassed: Float = 0
    
    var player: AVAudioPlayer!
    
    var toast: String = ""
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func toastSelected(_ sender: UIButton) {
        
        self.titleLabel.text = "How Do You Like Your Toast?"
        
        timer.invalidate()
        
        secondsPassed = 0
        
        totalTime = 0
        
        toast = sender.currentTitle!
        print(toast)
        
        totalTime = Float(toastTimes[toast]!)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.timerAction), userInfo: nil, repeats: true)

    
    }
    
    @objc func timerAction() {
        
        if (totalTime > 0){
            self.titleLabel.text = String(totalTime)
            totalTime = totalTime-1
        }
        
        else{
            self.titleLabel.text = "DONE!"
            playSound(label: "alarm_sound")
            timer.invalidate()
        }
    }
   
   
    func playSound(label : String) {
        let url = Bundle.main.url(forResource: label, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
    //}


    
}

