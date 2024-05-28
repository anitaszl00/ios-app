//
//  BasePage.swift
//  CanTestItUITests
//
//  Created by Anita on 10/05/2024.
//

import Foundation
import XCTest

class BasePage {
    let app = XCUIApplication()
    
    func scrollUp() {
        app.scrollViews.firstMatch.swipeUp(velocity:200)
    }
    
}
