//
//  MenuTableTableViewController.swift
//  SmartMenu
//
//  Created by UTS on 8/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import UIKit

class MenuTableTableViewController: UITableViewController {
//    enum AvailavlePriod {
//        case
//            Mooring,
//            Lunch,
//            Dinner,
//            AllDay
//    }
//    enum AvailableDay {
//        case
//            Monday,
//            Tuesday,
//            Wednesday,
//            Thursday,
//            Friday,
//            Saturday,
//            Sunday
//    }
//
//    struct AvaivaleType {
//       // var availableDay = PriodSet.init(dayInWeek: 1, serveTime: 1)
//       // var availavleTime = 1
//    }
    struct PriodSet {
        var dayInWeek: Dictionary =
        [
            1: "Monday",
            2: "Tuesday",
            3: "Wednesday",
            4: "Thursday",
            5: "Friday",
            6: "Saturday",
            7: "Sunday"]
        var serveTime: Dictionary =
        [
            1: "Mooring",
            2: "Lunch",
            3: "Dinner",
            4: "All Time"]
    }
    
    class Menu
    {
        var foodName: String
        var foodImg: String
        var foodDescription: String
        var availablePriod: [Int] = []
        var availableDay: [Int] 
        var foodSelectedQty: Int
        init (foodName: String, foodImg: String, foodDescription: String, availablePriod: [Int], availableDay: [Int], foodSelectedQty: Int)
        {
            self.foodName = foodName
            self.foodImg = foodImg
            self.foodDescription = foodDescription
            //self.availablePriod = [PriodSet()]
            self.availableDay = [Int]()
            self.foodSelectedQty = foodSelectedQty
        }
    }

    var menus: [Menu] = [
    
    
        Menu(foodName: "Green Tea",
              foodImg: "blur-breakfast-close-up-376464.jpg",
              foodDescription: "good to eat",
              availablePriod: [1,2,3],
              availableDay: [3,4,6],
              //availablePriod: (PriodSet.dayInWeek: 1, PriodSet.serveTime: 2),
              foodSelectedQty: 0
        ),
        Menu(foodName: "Coffee", foodImg: "", foodDescription: "drink", availablePriod: [2,3], availableDay: [3,4], foodSelectedQty: 1)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("print menu list")
        for item in menus {
            print (item.foodName, item.availableDay.count)
            for list in item.availableDay{
                print ("list: \(list)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
