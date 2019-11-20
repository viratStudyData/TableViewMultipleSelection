//
//  ViewModel.swift
//  TableViewTesting
//
//  Created by VD on 11/20/19.
//  Copyright © 2019 VD. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    //MARK: - Properties
    // Lets assume array comming from backend database
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

//MARK: - TableView DataSource
extension ViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count  // (1)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Cell.TableViewCell.CustomCell.rawValue, for: indexPath) as? CustomCell {
            cell.item = items[indexPath.row]
            
            // select/deselect the cell
            if items[indexPath.row].isSelected {
                //Call setSelected func in Cell Class and pass true for selected
                tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
                
            } else {
                //Call setSelected func in Cell Class and pass false for selected
                tableView.deselectRow(at: indexPath, animated: true) // (4)
                
            }
            return cell
        }
        return UITableViewCell()
    }
}
