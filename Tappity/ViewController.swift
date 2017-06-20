//
//  ViewController.swift
//  Tappity
//
//  Created by Matthew Teague on 5/30/17.
//  Copyright © 2017 Matthew Teague. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timeCount: UILabel!
    @IBOutlet var tapNumber: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var count = 5
    var timer = 1
    
    @IBAction func tapButton(){
        if timer > 0{
            timer = timer - 1
            
        let gameTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ (timer) in
            self.timeCount.text = "\(self.count)"
            self.count = self.count - 1
            }
            if count == 0 {
                gameTimer.invalidate()
            }
        }
        
        let _ = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false){ (timer) in
            self.timer = self.timer + 1
        }
    }
}




