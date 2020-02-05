//
//  StockviewViewController.swift
//  BMCalc
//
//  Created by Sri Harsha on 06/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit

class StockviewViewController: UIViewController {

    var StockName : String!
    var multi:Float!
    
    
    @IBOutlet weak var StockLabel: UILabel!
    
    @IBOutlet weak var cashField: UITextField!
    
    @IBOutlet weak var stockPriceField: UITextField!
    
    
    @IBOutlet weak var MISMulti: UILabel!
    
    
    
    @IBOutlet weak var MisLabel: UILabel!
    
    
    
    @IBOutlet weak var CncLabel: UILabel!
    
    @IBOutlet weak var GokeyLabel: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GokeyLabel.layer.cornerRadius = 8
        GokeyLabel.clipsToBounds = true
        title = StockName
        StockLabel.text = self.StockName
        MISMulti.text = String(multi)+"X"
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    
    @IBAction func GoKey(_ sender: UIButton) {
        let cash = cashField.text!
        let price = stockPriceField.text!
        let val:Int = Int(Float(cash)! / Float(price)!)
        
        
        CncLabel.text = String(val)
        MisLabel.text = String(Int(Float(val)*multi))
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
