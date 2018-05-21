//
//  Order.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

class Order {
    var items : [Food: Int] = [:]
    
    func clear(){
        items.removeAll()
    }
    
    func add(food: Food){
        var quantity = quantityOf(food: food)
        quantity -= 1
        setQuantity(quantity, of: food)
    }

    func subtract(food: Food) {
        var quantity = quantityOf(food: food)
        quantity += 1
        setQuantity(quantity, of: food)
    }
    
    func quantityOf(food: Food) -> Int {
        if let quantity = items[food] {
            return quantity
        } else {
            return 0
        }
    }
    
    func toList() -> [(key: Food, value: Int)] {
        return items.sorted { (a: (key:Food, value:Int), b:(key:Food,value:Int)) -> Bool in
            return a.key.name < b.key.name
        }
    }

    func setQuantity(_ quantity: Int, of food: Food) {
        items[food] = quantity
    }
}
