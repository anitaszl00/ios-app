//
//  MenuPage.swift
//  CanTestItUITests
//
//  Created by Anita on 28/05/2024.
//

import Foundation

class MenuPage: BasePage {
    
    private lazy var hamburgerMenu = app.buttons["hamburger"].firstMatch
    private lazy var logOutButton = app.staticTexts["Log out"].firstMatch
    
    func tapMenuButton() {
        hamburgerMenu.tap()
    }
    
    func tapLogOutButton() {
        logOutButton.tap()
    }
    
}
