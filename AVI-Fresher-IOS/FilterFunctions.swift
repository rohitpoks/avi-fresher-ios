//
//  FilterFunctions.swift
//  AVI-Fresher-IOS
//
//  Created by Rohit Pokhrel on 24/11/2023.
//

import Foundation


func filterListByDate(items: [StevensonFoodItem] , date: String) -> Set<StevensonFoodItem> {
    return filterSetByDate(items: Set(items), date: date)
}

func filterSetByDate(items: Set<StevensonFoodItem>, date: String) -> Set<StevensonFoodItem> {
    return items.filter {$0.date.starts(with: date)}
}

func filterSetByAllergens(items: Set<StevensonFoodItem>, allergenName: String) -> Set<StevensonFoodItem> {
    return items.filter {!$0.allergens.contains(Allergens(id: 0, name: allergenName, img: "" )) && !$0.allergens.contains(Allergens(id: 0, name: "may contain " + allergenName, img: "" ))}
}

func filterListByAllergens(items: [StevensonFoodItem], allergenName: String) -> Set<StevensonFoodItem> {
    return filterSetByAllergens(items: Set(items), allergenName: allergenName)
}

