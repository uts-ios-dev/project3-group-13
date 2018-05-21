//
//  OrderViewController.swift
//  SmartMenu
//
//  Created by David Lang on 21/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class OrderViewController: UITableViewController {
    var order: Order!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.toList().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
        let item = order.toList()[indexPath.row]
        cell.textLabel?.text = "\(item.value)x \(item.key.name)"
        cell.detailTextLabel?.text = "$\(item.key.cost*Double(item.value))"
        return (cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(order != nil)
    }
    
    @IBAction func clearOrder(_ sender: Any) {
        order.clear()
        self.tableView.reloadData()
    }
}
