//
//  OrderViewController.swift
//  SmartMenu
//
//  Created by David Lang on 21/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class OrderViewController: UITableViewController, OrderInformationCellDelegate {
   
    
    var order: Order!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return order.toList().count
        } else{
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
            let item = order.toList()[indexPath.row]
            cell.textLabel?.text = "\(item.value)x \(item.key.name)"
            cell.detailTextLabel?.text = String(format: "$%.2f", item.key.cost*Double(item.value))
            return (cell)
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as! OrderInformationCell
            cell.orderTotal.text = (String(format: "$%.2f", calculateTotal()))
            cell.delegate = self
            return cell
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assert(order != nil)
    }
    
    func pressedSendToKitchen(_ sender: OrderInformationCell) {
        let orderConfirmationController = UIAlertController(title: "Send Order to Kitchen", message: "Are you sure you want send order?", preferredStyle: .alert)
        let confirmOrderAction = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        let cancelOrderAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        orderConfirmationController.addAction(confirmOrderAction)
        orderConfirmationController.addAction(cancelOrderAction)
        present(orderConfirmationController, animated: true)
    }
    
    func calculateTotal() -> Double{
        var total = 0.0
        for foodQuantityTuple in order.toList(){
            total += (foodQuantityTuple.key.cost * Double(foodQuantityTuple.value))
        }
        return total
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    @IBAction func clearOrder(_ sender: Any) {
        order.clear()
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "foodDetailFromOrderDetail" {
            let selectedIndex = self.tableView.indexPathForSelectedRow!
            let fvc = segue.destination as! FoodViewController
            fvc.food = order.toList()[selectedIndex.row].key
            fvc.order = order
        }
    }
}
