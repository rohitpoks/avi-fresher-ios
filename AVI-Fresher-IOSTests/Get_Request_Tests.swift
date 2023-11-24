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
            try getTodaysItems(meal: "lunch")
            sleep(5)
        } catch {
            print("error :(")
        }
    }

}
