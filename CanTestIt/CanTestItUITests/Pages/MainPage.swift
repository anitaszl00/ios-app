//
//  MainPage.swift
//  CanTestItUITests
//
//  Created by Anita on 23/05/2024.
//

import Foundation

class MainPage: BasePage {
    
    private lazy var addEventButton = app.buttons["plus"].firstMatch
    private lazy var searchForEventTextField = app.textFields["searchField"]
    
    func tapAddButton() {
        addEventButton.tap()
    }
    
    func typeSearchForEvent(eventName: String){
        searchForEventTextField.tap()
        searchForEventTextField.typeText(eventName)
    }
}
