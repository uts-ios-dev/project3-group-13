//
//  Order.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct Order{
    var orderItems : [OrderItem]
    
    init(item : OrderItem){
        self.orderItems = [item]
    }
    
    init(items : [OrderItem]){
        self.orderItems = items
    }
    
    init() {
        self.orderItems = []
    }
    
    mutating func add(item : OrderItem){
        orderItems.append(item)
    }
    
    mutating func clear(){
        orderItems.removeAll()
    }
    
    // TODO overload the == and != operators for both Food and OrderItem
    mutating func remove(item : OrderItem){
        self.orderItems = self.orderItems.filter({($0.orderDate != item.orderDate) && ($0.food.name != item.food.name)})
    }
}
