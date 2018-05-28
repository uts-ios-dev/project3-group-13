//
//  MainViewController.swift
//  SmartMenu
//
//  Created by UTS on 10/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

protocol ReturnPreviewDateDelegate {
    func setPreviewDateTime(_ date: Date?)
}

class MainViewController: UITableViewController, ReturnPreviewDateDelegate {
    
    func setPreviewDateTime(_ newDate: Date?) {
        date = newDate
        updateMenuDate() //TODO is this needed? - check on real mac (wont be required if ViewDidLoad() was called when segued back to MainViewController
        tableView.reloadData() //TODO is this needed?
    }
    
    let menu: Menu = TestData().getTestMenu() //TODO load data from file
    var order: Order = TestData().getTestOrder() //TODO Order()
    var date: Date?
    var sectionList: [FoodSection] = []
    let titleDateFormatter = DateFormatter()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionList[section].header
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionList[section].list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = sectionList[indexPath.section].list[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return (cell)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDateFormatter.dateFormat = "EEE, h:mm a"
        updateMenuDate()
    }
    
    func updateMenuDate() {
        if let validDate = date {
            sectionList = FoodSection.fromList(menu.validFood(at: validDate))
            navigationItem.title = "Menu @ \(titleDateFormatter.string(from:validDate))"
        } else {
            sectionList = FoodSection.fromList(menu.validFood(at: Date()))
            navigationItem.title = "Current Menu"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "foodDetail" {
            let selectedIndex = self.tableView.indexPathForSelectedRow!
            let fvc = segue.destination as! FoodViewController
            fvc.food = sectionList[selectedIndex.section].list[selectedIndex.row]
            fvc.order = order
        } else if segue.identifier == "orderDetail" {
            let ovc = segue.destination as! OrderViewController
            ovc.order = order
        } else if segue.identifier == "previewPicker" {
            let pvc = segue.destination as! PreviewViewController
            pvc.returnDelegate = self
            pvc.date = date
        }
    }
    
    @IBAction func unwindToMainViewController(unwindSegue: UIStoryboardSegue) {
    }
}
