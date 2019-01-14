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
    var distance: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedLeftButton(sender: UIButton) {
        leftPointScore += 1
        sender.setTitle(String(leftPointScore), for: UIControl.State.normal)
        checkGameset()
    }
    
    
    @IBAction func tappedRightButton(sender: UIButton) {
        rightPointScore += 1
        sender.setTitle(String(rightPointScore), for: UIControl.State.normal)
        checkGameset()
    }

    func checkGameset() {
        
        if leftPointScore == 21, rightPointScore <= 19 {
            print("左側の選手が勝利です。")
        } else if rightPointScore == 21, leftPointScore <= 19 {
            print("右側の選手が勝利です。")
        }
        
        if leftPointScore > 21, rightPointScore >= 20, distance >= 2 {
            print("デュース。左側の選手が勝利です。")
            
        } else if rightPointScore > 21, leftPointScore >= 20, distance >= 2 {
            print("デュース。右側の選手が勝利です。")
            
        }
        
        distance = abs(leftPointScore - rightPointScore)
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "左の選手が勝利です。", message: "おめでとうございます！", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "もう一度", style: .default, handler: { (action) in
        }))
        present(alert, animated: true, completion: nil)
    }
    
    func moveToResultScene(player: String) {
        if player == "left" {
            performSegue(withIdentifier: "result", sender: [])
        } else if player == "right" {
            performSegue(withIdentifier: "result", sender: [])
        }
     }
    
}

