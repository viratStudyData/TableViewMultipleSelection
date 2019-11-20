//
//  Model.swift
//  TableViewTesting
//
//  Created by VD on 11/20/19.
//  Copyright © 2019 VD. All rights reserved.
//

import Foundation

struct Model {
    var title: String
    
}

class ViewModelItem {
    private var item: Model
    var isSelected = false
    var title: String {
        return item.title
    }
    
    init(item: Model) {
        self.item = item
    }
}
