//
//  Stockinfo.swift
//  BMCalc
//
//  Created by Sri Harsha on 02/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import Foundation
import UIKit

//struct UrlInfo {
//    let urlInfo = "https://api.kite.trade/margins/equity"
//    
//    func performUrlRequest(){
//        self.performRequest(urlString: self.urlInfo)
//    }
//    
//    
//    func performRequest(urlString:String){
//        if let url = URL(string: urlString){
//            let session = URLSession(configuration: .default)
//            
//            let task = session.dataTask(with: url){ (data, response,error) in
//                if error != nil{
//                    print(error!)
//                    return
//                }
//                if let safeData = data {
////                    let dataString = String(data: safeData, encoding: .utf8)
////                    print(dataString)
//                    self.parseJSON(stockData: safeData)
//                }
//
//            }
//            task.resume()
//        }
//    }
//    
//    
//    func parseJSON(stockData: Data){
//        let decoder = JSONDecoder()
//        do{
//            let decodedData = try decoder.decode(Array<StockCell>.self, from: stockData)
////            print(decodedData)
//            
//        }catch{
//            print(error)
//        }
//        
//    }
//    
//}
