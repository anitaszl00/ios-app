//
//  BaseTest.swift
//  CanTestItUITests
//
//  Created by Anita on 10/05/2024.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        app.launch()
        
        
    }
}
