//
//  CustomCell.swift
//  TableViewTesting
//
//  Created by VD on 11/20/19.
//  Copyright © 2019 VD. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var item: ViewModelItem? {
        didSet {
            textLabel?.text = item?.title
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // update UI
        accessoryType = selected ? .checkmark : .none
        
    }
    
}
