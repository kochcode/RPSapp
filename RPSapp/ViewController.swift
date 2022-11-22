//
//  ViewController.swift
//  RPSapp
//
//  Created by KEVIN KOCH on 11/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueScissors: UIImageView!
    @IBOutlet weak var bluePaper: UIImageView!
    @IBOutlet weak var blueRock: UIImageView!
    @IBOutlet weak var redRock: UIImageView!
    @IBOutlet weak var redPaper: UIImageView!
    @IBOutlet weak var redScissors: UIImageView!
    
    
    
    
    override func viewDidLoad() {
                super.viewDidLoad()
                let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
        blueScissors.addGestureRecognizer(tapGR)
        blueScissors.isUserInteractionEnabled = true
        bluePaper.addGestureRecognizer(tapGR)
        bluePaper.isUserInteractionEnabled = true
        blueScissors.addGestureRecognizer(tapGR)
        blueScissors.isUserInteractionEnabled = true
        }
        @objc func imageTapped(sender: UITapGestureRecognizer) {
                if sender.state == .ended {
                        print("BlueScissors tapped")
                }
        }
}

