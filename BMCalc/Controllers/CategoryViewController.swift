//
//  CategoryViewController.swift
//  BMCalc
//
//  Created by Sri Harsha on 05/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    
    @IBOutlet weak var IPOButton: UIButton!
    
    @IBOutlet weak var BrokerageKey: UIButton!
    
    
    @IBOutlet weak var MarginKey: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "BMC"
        // Do any additional setup after loading the view.
        IPOButton.layer.cornerRadius = 8
        IPOButton.clipsToBounds = true
        
        BrokerageKey.layer.cornerRadius = 8
        BrokerageKey.clipsToBounds = true
        
        MarginKey.layer.cornerRadius = 8
        MarginKey.clipsToBounds = true
        
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
