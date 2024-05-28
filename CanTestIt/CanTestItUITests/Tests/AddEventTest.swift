//
//  AddEventTest.swift
//  CanTestItUITests
//
//  Created by Anita on 14/05/2024.
//

import Foundation
import XCTest


class AddEventTest: BaseTest {
    
    let addEventPage = AddEventPage()
    let logInPage = LogInPage()
    let mainPage = MainPage()
    
    func testAddEvent() {
    
        logInPage.checkIfGetStartedButtonExists()
        logInPage.typeUserName(user: "user")
        logInPage.typePassword(password: "password")
        logInPage.tapLoginButton()
        mainPage.tapAddButton()
        
        addEventPage.typeEventTitle(eventName: "Rihanna Concert")
        addEventPage.chooseCategory()
        addEventPage.chooseStartDate()
        addEventPage.chooseEndDate()
        addEventPage.typePrice(price: "100")
        addEventPage.tapPremiumEventButton()
        addEventPage.tapSaveButton()
        mainPage.typeSearchForEvent(eventName: "Rihanna Concert")
        
        XCTAssertTrue(app.textFields["Rihanna Concert"].firstMatch.exists, "Rihanna Concert is not displayed")
        
    }
}
