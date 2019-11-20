//
//  ViewModel.swift
//  TableViewTesting
//
//  Created by VD on 11/20/19.
//  Copyright © 2019 VD. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    class var identifier: String {
        return String(describing: self)
    }
    
    let dataArray = [Model(title: "Swift"),
                     Model(title: "Objective C"),
                     Model(title: "Java"),
                     Model(title: "Kotlin"),
                     Model(title: "Java Script"),
                     Model(title: "Python"),
                     Model(title: "Ruby"),
                     Model(title: "PHP"),
                     Model(title: "Perl"),
                     Model(title: "Go"),
                     Model(title: "C#"),
                     Model(title: "C++"),
                     Model(title: "Visual Basic"),
                     Model(title: "Swift"),
                     Model(title: "Objective C"),
                     Model(title: "Java"),
                     Model(title: "Kotlin"),
                     Model(title: "Java Script"),
                     Model(title: "Python"),
                     Model(title: "Ruby"),
                     Model(title: "PHP"),
                     Model(title: "Perl"),
                     Model(title: "Go"),
                     Model(title: "C#"),
                     Model(title: "C++"),
                     Model(title: "Visual Basic"),
                     Model(title: "Pascal")]
    
    var items = [ViewModelItem]()
    override init() {
        items = dataArray.map { ViewModelItem(item: $0) }
    }
}

extension ViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count  // (1)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomCell {
            cell.item = items[indexPath.row] // (2)
            // select/deselect the cell
            if items[indexPath.row].isSelected {
                tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none) // (3)
            } else {
                tableView.deselectRow(at: indexPath, animated: true) // (4)
                
            }
            return cell
        }
        return UITableViewCell()
    }
}
