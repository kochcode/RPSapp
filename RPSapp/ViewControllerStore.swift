//
//  ViewControllerStore.swift
//  RPSapp
//
//  Created by KEVIN KOCH on 12/1/22.
//

import UIKit

class ViewControllerStore: UIViewController {
    var clicksS : Int = 0
    var multi : Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    storeClickOutput.text = "Clicks: \(clicksS)"
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindSegue"{
             let clickMain = segue.destination as! ViewController
            clickMain.clicks = clicksS
            clickMain.multiP = multi
        }
    }

}
