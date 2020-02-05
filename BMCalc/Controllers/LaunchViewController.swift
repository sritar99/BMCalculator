//
//  LaunchViewController.swift
//  BMCalc
//
//  Created by Sri Harsha on 05/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit
import Foundation
class LaunchViewController: UIViewController {

    @IBOutlet weak var StartKey: UIButton!
    
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var charIndex = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let text = "BMCalculator"
        // Do any additional setup after loading the view.
        
        for i in text{
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { (timer) in
                self.titleLabel.text?.append(i)
            }
            charIndex += 1
        }
        
        StartKey.layer.cornerRadius = 10
        StartKey.clipsToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
