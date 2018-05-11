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
    
    init(orderItem : OrderItem){
        self.orderItems = [orderItem]
    }
    
    init(orderItems : [OrderItem]){
        self.orderItems = orderItems
    }
    
    mutating func addOrderItem(orderItem : OrderItem){
        orderItems.append(orderItem)
    }
    
    mutating func clear(){
        orderItems.removeAll()
    }
    
    // TODO overload the == and != operators for both Food and OrderItem
    mutating func removeOrderItem(orderItem : OrderItem){
        self.orderItems = self.orderItems.filter({($0.orderDate != orderItem.orderDate) && ($0.food.name != orderItem.food.name)})
    }
}
