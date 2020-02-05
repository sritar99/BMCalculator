//
//  FirstViewController.swift
//  BMCalc
//
//  Created by Sri Harsha on 02/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit
import Foundation
class MarginViewController: UIViewController, UITableViewDelegate {

    var StockList :[StockCell] = [
        StockCell(tradingsymbol: "APOLLOTYRE", mis_multiplier: 12.5),
    ]
    var StockName : String!
    var multi:Float!
    
    @IBOutlet weak var tableView: UITableView!
    
//    var List = [String:Float]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MARGIN'S"
        performUrlRequest()
        
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
        let urlInfo = "https://api.kite.trade/margins/equity"
        
        func performUrlRequest(){
            self.performRequest(urlString: self.urlInfo)
        }
        
        
        func performRequest(urlString:String){
            if let url = URL(string: urlString){
                let session = URLSession(configuration: .default)
                
                let task = session.dataTask(with: url){ (data, response,error) in
                    if error != nil{
                        print(error!)
                        return
                    }
                    if let safeData = data {
    //                    let dataString = String(data: safeData, encoding: .utf8)
    //                    print(dataString)
                        DispatchQueue.main.async{
                            self.parseJSON(stockData: safeData)
                        }
                    }

                }
                task.resume()
            }
        }
        
        
        func parseJSON(stockData: Data){
            let decoder = JSONDecoder()
            do{
                let decodedData = try decoder.decode(Array<StockCell>.self, from: stockData)
//                print(decodedData)
//                var StockList :[StockCell] = [
//                    StockCell(tradingsymbol: "APOLLOTYRE", mis_multiplier: 12.5),
//                ]
                
                
                for i in decodedData{
                    self.StockList.append(StockCell(tradingsymbol: i.tradingsymbol,mis_multiplier: i.mis_multiplier))
                    
                }
                                
            }catch{
                print(error)
            }
//            self.StockList.remove(at: 0)
            
//            print(self.StockList.count)
//            for i in StockList{
//                self.List["\(i.tradingsymbol)"] = i.mis_multiplier
//            }
            self.tableView.reloadData()
        }
        

    
    
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // go to show patients review details that are retrived from database by performing segues
        
        let number = indexPath.row
        StockName = StockList[number].tradingsymbol
        multi = StockList[number].mis_multiplier
        performSegue(withIdentifier: "goToStock", sender: self)
       }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcDestinationn = segue.destination as? StockviewViewController {
            vcDestinationn.StockName = StockName
            vcDestinationn.multi = multi
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}


extension MarginViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StockList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        as! ListCell
//        cell.titleLabel.text = Array(List)[indexPath.row].key
        cell.titleLabel.text = self.StockList[indexPath.row].tradingsymbol

        
        return cell
    }
    

    
    
}


