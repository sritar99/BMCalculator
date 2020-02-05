//
//  ListCell.swift
//  BMCalc
//
//  Created by Sri Harsha on 05/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
