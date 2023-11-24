//
//  Get_Request_Tests.swift
//  AVI-Fresher-IOSTests
//
//  Created by Rohit Pokhrel on 23/11/2023.
//

@testable import AVI_Fresher_IOS
import Foundation
import XCTest

class Get_Request_Tests: XCTestCase {

    func testGetRequestForPresentDayLunch() {
        do {
            try getWeeklyItems(meal: "lunch")
            sleep(5)
            assert(nil != weeklyLunch)
//            print(weeklyLunch!)
//            print(filterListByDate(items: weeklyLunch!, date: "2023-11-19"))
            var temp = (filterListByDate(items: weeklyLunch!, date: "2023-11-19"))
            print(filterSetByAllergens(items: temp, allergenName: "tree nut"))
        } catch {
            print("Check logs, error while trying to get weekly lunch items")
        }
    }

}
