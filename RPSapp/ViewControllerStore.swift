//
//  ViewControllerStore.swift
//  RPSapp
//
//  Created by KEVIN KOCH on 12/1/22.
//

import UIKit

class ViewControllerStore: UIViewController {
    
    
    @IBOutlet weak var blue2Score: UITextField!
    @IBOutlet weak var red2Score: UITextField!
    var b2Score : Int = 0
    var r2Score : Int = 0
    var bColor = 0
    var rColor = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        blue2Score.text! = "Score: \(b2Score)"
        red2Score.text! = "Score: \(r2Score)"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        performSegue(withIdentifier: "unwindSegue2", sender: nil)
    }
    
    @IBAction func purpleButton(_ sender: UIButton) {
        if b2Score >= 10{
            bColor = 2
            b2Score -= 10
            blue2Score.text! = "Score: \(b2Score)"
        }
    }
    @IBAction func greenButton(_ sender: UIButton) {
        if b2Score >= 5{
            bColor = 1
            b2Score -= 5
            blue2Score.text! = "Score: \(b2Score)"
        }
    }
    @IBAction func orangeButton(_ sender: UIButton) {
        if r2Score >= 5{
            rColor = 1
            r2Score -= 5
            red2Score.text! = "Score: \(r2Score)"
        }
    }
    @IBAction func yellowButton(_ sender: UIButton) {
        if r2Score >= 10{
            rColor = 2
            r2Score -= 10
            red2Score.text! = "Score: \(r2Score)"
        }
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindSegue2"{
             let scoreMain = segue.destination as! ViewController
            scoreMain.bScore = b2Score
            scoreMain.rScore = r2Score
            scoreMain.b2Color = bColor
            scoreMain.r2Color = rColor
        }
    }

}
