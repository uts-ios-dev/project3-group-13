//
//  TestData.swift
//  SmartMenu
//
//  Created by Rhys Biddle on 14/5/18.
//  Copyright © 2018 Group-13. All rights reserved.
//

import Foundation

struct TestData{

    var calendar : Calendar
    var foodItems : [Food]
    var breakfastConstraint : TimeConstraint
    var lunchConstraint : TimeConstraint
    var dinnerConstraint : TimeConstraint
    
    init() {
        
        self.calendar = Calendar.current
        self.breakfastConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 7, endOfConstraint: 10, calendarComponent : Calendar.Component.hour)
        self.lunchConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 11, endOfConstraint: 15, calendarComponent : Calendar.Component.hour)
        self.dinnerConstraint = TimeConstraint(calendar: calendar, startOfConstraint: 15, endOfConstraint: 20, calendarComponent : Calendar.Component.hour)
        
        self.foodItems = [
            Food(name: "Bircher Muesli", description: "with fresh fruit and nuts", type: FoodType.light, cost: 5, imageData: "Bircher_Muesli.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Crossaint", description: "with ham and cheese", type: FoodType.light, cost: 6.5, imageData: "Crossaint.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Penny Lane's Big Breakfast", description: "Two eggs of your choice, roast tomato, sauteed muchroom and spinach, sliced avocado, bacon, sausage, hash brown. Served with a side of sourdough", type: FoodType.main, cost: 18, imageData: "big breakfast.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 17),
            Food(name: "Bacon & Egg Roll", description: "Fried egg, bacon, aioli, wild rocket and BBQ suace on a super soft milk bun", type: FoodType.light, cost: 6.50, imageData: "bacon and egg roll.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 12),
            Food(name: "Mushroom & Egg Roll", description: "Fried eggs, suateed mushrooms, aioli,  wild rocket and BBQ suace on a super soft milk bun", type: FoodType.light, cost: 6.50, imageData: "mushroom and egg roll.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 12),
            Food(name: "Plain Crossaint", description: "Toasted crossaint with butter on side", type: FoodType.light, cost: 3.50, imageData: "plain crossaint.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 6),
            Food(name: "Cheese & Tomato Crossaint", description: "Toasted croassaint with cheese and tomato", type: FoodType.light, cost: 6.50, imageData: "cheese tomato crossaint.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 9),
            Food(name: "Ham & Cheese Crossaint", description: "Toasted croassaint with ham and cheese", type: FoodType.light, cost: 6.50, imageData: "ham and cheese crossaint.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 9),
            Food(name: "Corn Fritters", description: "with bacon, sour cream & Guacamole", type: FoodType.main, cost: 13.0, imageData: "corn fritters.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Belgian Waffles with Bacon & Maple syrup", description: "Two belgian waffles with bacon and maple syrup", type: FoodType.main, cost: 14.0, imageData: "belgian waffle with bacon.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Eggs with Avocado & Fetta on Toast", description: "Smashed & seasoned avocado on toast with fetta cheese and two poached eggs", type: FoodType.light, cost: 12.0, imageData: "egg with avocado fetta on toast.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 15),
            Food(name: "Granola & Yoghurt Cup", description: "with fresh strawberries", type: FoodType.light, cost: 5.0, imageData: "granola yoghurt cup.jpg", suggestions: [], timeConstraints: [breakfastConstraint], waitTimeMinutes: 10),
            Food(name: "Shoestring fries", description: "with aioli", type: FoodType.light, cost: 5, imageData: "shoestring fries.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 10),
            Food(name: "Sweet Potato Chips", description: "with aioli", type: FoodType.light, cost: 6, imageData: "sweet potato chips.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 10),
            Food(name: "Side Garden Salad", description: "with tomato, cucumber, onion and a balsamic dressing", type: FoodType.light, cost: 6, imageData: "side garden salad.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Side Rocket & Parmesan Salad", description: "with tomato and a balsamic dressing", type: FoodType.light, cost: 6, imageData: "side rocket parmesan salad.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Trio of Dips", description: "served with toasted sourdough", type: FoodType.light, cost: 12, imageData: "trio of dips.jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Antipasto Platter", description: "selection of cured meats, cheese and roast vegetables", type: FoodType.light, cost: 16, imageData: "antipasto platter.jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 12),
            Food(name: "Vegetarian Tasting Plate", description: "selection of cured meats, cheese and roast vegetables", type: FoodType.light, cost: 12, imageData: "vegetarian tasting plate.jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Mediterranean Tasting Plate", description: "mushroom arancini with harrissa mayonaisse, salt & pepper squid with aioli", type: FoodType.light, cost: 12, imageData: "mediterranean tasting plate.jpg", suggestions: [], timeConstraints: [lunchConstraint], waitTimeMinutes: 10),
            Food(name: "Salt & Pepper Squid", description: "with aioli and lemon/lime", type: FoodType.main, cost: 12, imageData: "salt pepper squid.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef, Mushroom & Real Ale Ragu", description: "served with house mashed potato", type: FoodType.main, cost: 12, imageData: "beef mushroom real ale ragu.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chicken Schnitzel", description: "House-crumbed chicken breast schnitzel served with chips tomato sauce & lemon-wedge", type: FoodType.main, cost: 14, imageData: "chicken schnitzel.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chicken Parmigiana", description: "House-crumbed chicken breast schnitzel with Neapolitan sauce and cheese, with chips tomato sauce & lemon-wedge", type: FoodType.main, cost: 12, imageData: "chicken parmigiana.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Prawn Fetuccini", description: "with bacon tomato and mild chilli", type: FoodType.main, cost: 15, imageData: "prawn fetuccini.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Bangers & Mash", description: "two german kransky sausages with mashed potato onion and gravy", type: FoodType.main, cost: 15, imageData: "bangers mash.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Angus Rump Steak", description: "200g, served with mash potato and onion gravy", type: FoodType.main, cost: 14, imageData: "angus rump steak.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "T-Bone Steak", description: "300g, served with mash potato and onion gravy", type: FoodType.main, cost: 15, imageData: "t-bone steak.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "Grilled Barramundi", description: "with tartare sauce, served with mash potato and onion gravy", type: FoodType.main, cost: 19, imageData: "grilled barramundi.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 20),
            Food(name: "Classic Cheese", description: "Wagyu beef patty with cheddar cheese, tomato, lettuce, tomato sauce and mayo", type: FoodType.main, cost: 12, imageData: "classic cheese.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Grilled Chicken", description: "Grilled chicken tenderloins with tomato, lettuce, aioli and avocado salsa", type: FoodType.main, cost: 13, imageData: "grilled chicken.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Fish Burger", description: "House-crumbed fish fillet with a lemon mayonnaise, cheddar cheese, tomato, lettuce and relish", type: FoodType.main, cost: 13, imageData: "fish burger.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef & Bacon", description: "Wagyu beef patty, bacon, lettuce, tomato, cheddar cheese, pickles, aioli & tomato relish", type: FoodType.main, cost: 16, imageData: "beef bacon.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Mexican Chicken", description: "Chili and lime coated chicken breast with corn salsa and avocado", type: FoodType.main, cost: 16, imageData: "mexican chicken.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Pulled Mushroom", description: "Assorted mushrooms with slaw and chilli aioli", type: FoodType.main, cost: 13, imageData: "pulled mushroom.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Beef Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 14, imageData: "beef nachos.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Vegetarian Nachos", description: "with spicy salsa, guacamole, sour cream and cheese", type: FoodType.main, cost: 12, imageData: "vegetarian nachos.jpg", suggestions: [], timeConstraints: [lunchConstraint, dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Garlic & Cheese", description: "ground garlic & mozzarella cheese", type: FoodType.main, cost: 8, imageData: "garlic cheese.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Margherita Pizza", description: "Fresh tomato, basil and mozzarella", type: FoodType.main, cost: 12, imageData: "margherita pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Hawaian Pizza", description: "Shredded ham, pineapple and mozarella cheese", type: FoodType.main, cost: 13, imageData: "hawaian pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Prosciutto Pizza", description: "Cherry tomato, wild rocket, parmesan cheese and thinly slice prosciutto", type: FoodType.main, cost: 15, imageData: "prosciutto pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Vegetarian", description: "Fresh mushrooms, capsicum, olives, grilled eggplant, pineapple and mozzarella cheese", type: FoodType.main, cost: 14, imageData: "vegetarian pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Chorizo, Chill & Garlic Prawns", description: "with mozarella cheese and drizzled salsa verde", type: FoodType.main, cost: 17, imageData: "chorizo chill garlic prawns.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "The Penny Lane Supreme", description: "Minced beef, salami, chorizo, bacon, capsicum, olives, pineapple and mozzarella cheese", type: FoodType.main, cost: 17, imageData: "supreme pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Nutella Pizza", description: "with fresh strawberries", type: FoodType.dessert, cost: 14, imageData: "nutella pizza.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 15),
            Food(name: "Passionfruit Pannacotta", description: "Passionfruit ice-cream cake", type: FoodType.dessert, cost: 9, imageData: "passionfruit pannacotta.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Sticky Date Pudding", description: "served with vanilla ice-cream", type: FoodType.dessert, cost: 9, imageData: "sticky date pudding.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Chocolate Fondant", description: "served with vanilla ice-cream", type: FoodType.dessert, cost: 9, imageData: "chocolate fondant.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Apple & Salted Caramel Tart", description: "", type: FoodType.dessert, cost: 9, imageData: "apple salted caramel tart.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5),
            Food(name: "Belgian Waffles", description: "Two waffles with fresh strawberries, sliced banana & maple syrup", type: FoodType.dessert, cost: 14, imageData: "belgian waffles.jpg", suggestions: [], timeConstraints: [dinnerConstraint], waitTimeMinutes: 5)]
    }
    
    func getTestMenu() -> Menu{
        return Menu(foodItems: foodItems)
    }
    
    func getTestOrder() -> Order {
        let o = Order()
        let m = getTestMenu()
        o.add(food: m.foodItems[0])
        o.add(food: m.foodItems[1])
        o.add(food: m.foodItems[1])
        o.add(food: m.foodItems[2])
        o.add(food: m.foodItems[2])
        o.add(food: m.foodItems[2])
        return o
    }
}



