//
//  LogOutTest.swift
//  CanTestItUITests
//
//  Created by Anita on 18/05/2024.
//

import Foundation
import XCTest

class LogOutTest: BaseTest {
    
    let logInPage = LogInPage()
    let menuPage = MenuPage()
    
    func testlogOutWithSuccess() {
        
        logInPage.checkIfGetStartedButtonExists()
        logInPage.typeUserName(user: "user")
        logInPage.typePassword(password: "password")
        logInPage.tapLoginButton()
        menuPage.tapMenuButton()
        menuPage.tapLogOutButton()
        
        XCTAssertTrue(app.staticTexts["Welcome\n" + "Back!"].firstMatch.exists, "Welcome back  is not displayed")
        
    }
}
