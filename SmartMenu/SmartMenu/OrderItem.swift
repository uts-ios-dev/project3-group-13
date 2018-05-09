//
//  OrderItem.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 9/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct OrderItem{
    let food : Food
    let quantity : Int
    let orderDate : Date
    //let expectedReadyDate : Date
    
    init(food : Food, quantity : Int, orderDate : Date){
        self.food = food
        self.quantity = quantity
        self.orderDate = orderDate
    }
}
