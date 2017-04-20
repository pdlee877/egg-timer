//
//  ViewController.swift
//  egg-timer
//
//  Created by Paula Lee on 4/20/17.
//  Copyright © 2017 Paula Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
            time -= 1
            timeLabel.text = String(time)
        } else {
            timer.invalidate() //stop the timer
        }
    }

    @IBOutlet var timeLabel: UILabel!
    
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func plusTenButton(_ sender: Any) {
            time += 10
            timeLabel.text = String(time)
    }
    
    
    @IBAction func minusTenButton(_ sender: Any) {
        if time > 10 {
            time -= 10
            timeLabel.text = String(time)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 210
        timeLabel.text = String(time)
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

