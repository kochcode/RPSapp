//
//  ViewController.swift
//  RPSapp
//
//  Created by KEVIN KOCH on 11/21/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueStatus: UITextField!
    @IBOutlet weak var redStatus: UITextField!
    @IBOutlet weak var blueScore: UITextField!
    @IBOutlet weak var redScore: UITextField!
    
    var blue = 0
    var red = 0
    var bScore = 0
    var rScore = 0
    var wlt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func compare(){
        if blue == red{
            wlt = "t"
        }
        else if blue == 1 && red == 2{
            wlt = "bw"
            
        }
        else if blue == 1 && red == 3{
            wlt = "rw"
        }
        else if blue == 2 && red == 1{
            wlt = "rw"
        }
        else if blue == 2 && red == 3{
            wlt = "bw"
        }
        else if blue == 3 && red == 1{
            wlt = "bw"
        }
        else if blue == 3 && red == 2{
            wlt = "rw"
        }
        if wlt == "t"{
            blueStatus.text! = "Tie!"
            redStatus.text! = "Tie!"
        }
        else if wlt == "bw"{
            blueStatus.text! = "Winner!"
            redStatus.text! = "Loser!"
            bScore += 1
            blueScore.text! = "Score: \(bScore)"
        }
        else if wlt == "rw"{
            blueStatus.text! = "Loser!"
            redStatus.text! = "Winner!"
            rScore += 1
            redScore.text! = "Score: \(rScore)"
        }
    }
    
    @IBAction func blueScissors(_ sender: UIButton) {
        if redStatus.text! == " "{
            blue = 1
            blueStatus.text! = " "
            redStatus.text! = "Red's Turn"
        }
    }
    @IBAction func bluePaper(_ sender: UIButton) {
        if redStatus.text! == " "{
            blue = 2
            blueStatus.text! = " "
            redStatus.text! = "Red's Turn"
        }
    }
    @IBAction func blueRock(_ sender: UIButton) {
        if redStatus.text! == " "{
            blue = 3
            blueStatus.text! = " "
            redStatus.text! = "Red's Turn"
        }
    }
    
    @IBAction func redScissors(_ sender: UIButton) {
        if blueStatus.text! == " "{
            red = 1
            compare()
        }
    }
    @IBAction func redPaper(_ sender: UIButton) {
        if blueStatus.text! == " "{
            red = 2
            compare()
        }
    }
    @IBAction func redRock(_ sender: Any) {
        if blueStatus.text! == " "{
            red = 3
            compare()
        }
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        blueStatus.text! = "Blue's Turn"
        redStatus.text! = " "
    }
    @IBAction func storeButton(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "storeSegue"{
             let scoreStore = segue.destination as! ViewControllerStore
            scoreStore.r2Score = rScore
            scoreStore.b2Score = bScore
        }
    }
//    @IBAction func unwind(_ seg: UIStoryboardSegue){
//        let svc = seg.source as! ViewControllerStore
//        clickOutput.text = "Clicks: \(clicks)"
//    }
}


