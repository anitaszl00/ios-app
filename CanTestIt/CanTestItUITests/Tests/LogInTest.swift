//
//  LogInTest.swift
//  CanTestItUITests
//
//  Created by Anita on 10/05/2024.
//

import Foundation
import XCTest

class LoginTest: BaseTest {

    let logInPage = LogInPage()
  
    func testLoginTestWithSuccess() {
        
        logInPage.checkIfGetStartedButtonExists()
        logInPage.typeUserName(user: "user")
        logInPage.typePassword(password: "password")
        logInPage.tapLoginButton()
        
        XCTAssertTrue(logInPage.findYourEventText.exists, "Find your event is not displayed")
    }
    
    func testLoginWithoutSuccess(){
  
        logInPage.checkIfGetStartedButtonExists()
        logInPage.typeUserName(user: "user1")
        logInPage.typePassword(password: "password")
        logInPage.tapLoginButton()
        
        XCTAssertTrue(logInPage.loginErrorMessageText.exists, "Login Error Message is displayed")
    }
}
