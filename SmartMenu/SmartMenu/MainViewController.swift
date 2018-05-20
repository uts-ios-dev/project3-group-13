//
//  MainViewController.swift
//  SmartMenu
//
//  Created by UTS on 10/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    let menu: Menu = TestData().getTestMenu() //TODO load data from file
    var date: Date = Date()
    var sectionList: [FoodSection] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionList[section].foodType.description
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionList[section].foodList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = sectionList[indexPath.section].foodList[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return (cell)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionList = FoodSection.fromList(menu.validFood(at: date))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "foodDetail" {
            let selectedIndex = self.tableView.indexPathForSelectedRow!
            let fvc = segue.destination as! FoodViewController
            fvc.food = sectionList[selectedIndex.section].foodList[selectedIndex.row]
        }
    }
}
