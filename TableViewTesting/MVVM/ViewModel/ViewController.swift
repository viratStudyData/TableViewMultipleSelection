//
//  ViewController.swift
//  TableViewTesting
//
//  Created by VD on 11/20/19.
//  Copyright © 2019 VD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnNext: UIButton!
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

   
//        tableView?.allowsMultipleSelection = true
        tableView?.dataSource = viewModel

    }
    
    @IBAction func next(_ sender: Any) {
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.items[indexPath.row].isSelected = true
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        viewModel.items[indexPath.row].isSelected = false
        
    }
}
