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
        return order.orderItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
        let item = order.orderItems[indexPath.row]
        cell.textLabel?.text = "\(item.quantity)x \(item.food.name)"
        cell.detailTextLabel?.text = "$\(item.food.cost*Double(item.quantity))"
        return (cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(order != nil)
    }
}
