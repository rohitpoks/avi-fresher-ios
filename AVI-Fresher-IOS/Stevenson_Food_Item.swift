//
//  Stevenson_Food_Item.swift
//  AVI-Fresher-IOS
//
//  Created by Rohit Pokhrel on 23/11/2023.
//

import Foundation

class Allergens : Decodable, Equatable, CustomStringConvertible {
    
    let id: Int
    let name: String
    let img: String
    var description: String {return self.name}
    
    static func == (lhs: Allergens, rhs: Allergens) -> Bool {
        return lhs.name.lowercased() == rhs.name.lowercased()
    }
    
    init(id: Int, name: String, img: String) {
        self.id = id
        self.name = name
        self.img = img
    }
}

class Nutritionals : Decodable, Equatable, CustomStringConvertible {
    
    

    let id: Int
    let servingSize: String
    let servingSizeUOM: String
    let calories: String
    let fat: String
    let caloriesFromFat: String
    let saturatedFat: String
    let transFat: String
    let cholesterol: String
    let sodium: String
    let carbohydrates: String
    let dietaryFiber: String
    let sugars: String
    let addedSugar: String
    let protein: String
    let corporateProductId: Int
    var description: String {return self.calories}
    
    
    static func == (lhs: Nutritionals, rhs: Nutritionals) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    init(id: Int, servingSize: String, servingSizeUOM: String, calories: String, fat: String, caloriesFromFat: String, saturdatedFat: String, transFat: String, cholesterol: String, sodium: String, carbohydrates: String, dietaryFiber: String, sugars: String, addedSugar: String, protein: String, corporateProdutId: Int) {
        self.id = id
        self.servingSize = servingSize
        self.servingSizeUOM = servingSizeUOM
        self.calories = calories
        self.fat = fat
        self.caloriesFromFat = caloriesFromFat
        self.saturatedFat = saturdatedFat
        self.transFat = transFat
        self.cholesterol = cholesterol
        self.sodium = sodium
        self.carbohydrates = carbohydrates
        self.dietaryFiber = dietaryFiber
        self.sugars = sugars
        self.addedSugar = addedSugar
        self.protein = protein
        self.corporateProductId = corporateProdutId        
    }
}

class StevensonFoodItem : Decodable, Hashable, CustomStringConvertible {

    
    let id: Int
    let name: String
    let date: String
    let image: String
    var description: String {
        return "Name: " + self.name + " Date " + self.date + " Allergens " + String(describing: self.allergens)
    }
    let categoryName: String
    let stationName: String
    let stationOrder: Int
    let allergens: [Allergens]
    let nutritionals: Nutritionals
    
    static func == (lhs: StevensonFoodItem, rhs: StevensonFoodItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
        
    
    init(id: Int, name: String, date: String, image: String, categoryName: String, stationName: String, stationOrder: Int, allergens: [Allergens], nutritionals: Nutritionals) {
        self.id = id
        self.name = name
        self.date = date
        self.image = image
        self.categoryName = categoryName
        self.stationName = stationName
        self.stationOrder = stationOrder
        self.allergens = allergens
        self.nutritionals = nutritionals
    }
    
}

