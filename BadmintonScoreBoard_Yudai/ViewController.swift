//
//  ViewController.swift
//  BadmintonScoreBoard_Yudai
//
//  Created by Fumiya Tanaka on 2019/01/07.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftPointScore = 0
    var leftGameScore = 0
    
    var rightPointScore = 0
    var rightGameScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedLeftButton(sender: UIButton) {
        leftPointScore += 1
        sender.setTitle(String(leftPointScore), for: UIControl.State.normal)
    }
    
    @IBAction func tappedRightButton(sender: UIButton) {
        rightPointScore += 1
        sender.setTitle(String(rightPointScore), for: UIControl.State.normal)
    }

    func checkGameset() {
//        if leftPointScore >= 
    }
    
}

