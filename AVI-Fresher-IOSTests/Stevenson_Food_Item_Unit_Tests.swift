//
//  Stevenson_Food_Item_Unit_Tests.swift
//  AVI-Fresher-IOSTests
//
//  Created by Rohit Pokhrel on 23/11/2023.
//

@testable import AVI_Fresher_IOS
import Foundation
import XCTest

class Stevenson_Food_Item_Unit_Tests: XCTestCase {

    var simpleFoodItem: StevensonFoodItem = StevensonFoodItem(id: 123, name: "cake", date: "123456", image:"some-url", categoryName: "some category", stationName: "some station", stationOrder: 5, allergens: [Allergens(id: 1234, name:"lactose", img:"someURL"), Allergens(id: 1234, name:"treeNut", img:"someURL")], nutritionals: Nutritionals(id: 1234, servingSize: "1234", servingSizeUOM: "1234", calories: "1234", fat: "1234", caloriesFromFat: "1234", saturdatedFat: "1234", transFat: "1234", cholesterol: "1234", sodium: "1234", carbohydrates: "1234", dietaryFiber: "1234", sugars: "1234", addedSugar: "1234", protein: "1234", corporateProdutId: 1234))
    
    func testFoodItemProperties() {
        XCTAssertEqual(simpleFoodItem.name, "cake")
        XCTAssertEqual(simpleFoodItem.allergens, [Allergens(id: 1234, name:"lactose", img:"someURL"), Allergens(id: 1234, name:"treeNut", img:"someURL")])
        XCTAssertEqual(simpleFoodItem.nutritionals, Nutritionals(id: 1234, servingSize: "1234", servingSizeUOM: "1234", calories: "1234", fat: "1234", caloriesFromFat: "1234", saturdatedFat: "1234", transFat: "1234", cholesterol: "1234", sodium: "1234", carbohydrates: "1234", dietaryFiber: "1234", sugars: "1234", addedSugar: "1234", protein: "1234", corporateProdutId: 1234))
        
    }


}
