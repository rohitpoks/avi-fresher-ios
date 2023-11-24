//
//  ItemFetcher.swift
//  AVI-Fresher-IOS
//
//  Created by Rohit Pokhrel on 23/11/2023.
//

import Foundation

var weeklyLunch: [StevensonFoodItem]? = nil
var weeklyDinner: [StevensonFoodItem]? = nil
var weeklyBreakfast: [StevensonFoodItem]? = nil
enum UnwrappingError: Error {
    case InvalidMealId
    case AviApiError
}

func getWeeklyItems(meal: String) throws {
    
    let date = Date()
    // get the current calendar
    let calendar = Calendar.current
    // get the current day, month and year
    let month = calendar.component(.month, from: date)
    let day = calendar.component(.day, from: date)
    let year = calendar.component(.year, from: date)
    let mealsToIds = ["breakfast": "182", "lunch": "183", "dinner": "184"]
    let datePrefix: String = String(year) + "-" + String(month) + "-" + String(day)
    // make api call
    guard let mealId: String = mealsToIds[meal] else {
        throw UnwrappingError.InvalidMealId
    }
    
    var request = URLRequest(url: URL(string: "https://dish.avifoodsystems.com/api/menu-items/week?date=" + datePrefix + "&locationId=111&mealId=" + mealId)!)
    
    request.httpMethod = "GET"
    
    let session = URLSession.shared
    
    
    let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
        let decoder = JSONDecoder()
        // try and decode
        do {
            if data == nil {
                throw UnwrappingError.AviApiError
            }
            let decodedData = try! decoder.decode([StevensonFoodItem].self, from: data!)
            if (meal == "breakfast") {
                weeklyBreakfast = decodedData
            }
            if (meal == "lunch") {
                weeklyLunch = decodedData
            }
            if (meal == "dinner") {
                weeklyDinner = decodedData
            }
            
        } catch {
            print("Error while deserializing JSON. This is most likely a problem with AVI's API.")
        }
    })
    
    task.resume()

}
