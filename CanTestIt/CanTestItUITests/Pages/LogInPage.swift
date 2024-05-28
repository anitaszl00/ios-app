//
//  LogInPage.swift
//  CanTestItUITests
//
//  Created by Anita on 23/05/2024.
//

import Foundation

class LogInPage: BasePage {
    
    private lazy var userNameTextField = app.textFields["loginNameTextField"].firstMatch
    private lazy var passwordTextField = app.secureTextFields["passwordTextField"].firstMatch
    private lazy var loginButton = app.buttons["loginButton"].firstMatch
    lazy var findYourEventText = app.staticTexts["Find your event"].firstMatch
    lazy var loginErrorMessageText = app.staticTexts["loginErrorMessage"].firstMatch
    
    func checkIfGetStartedButtonExists() {
        if app.buttons["Get Started"].exists {
            app.buttons["Get Started"].tap()
        }
    }
    
    func typeUserName(user: String) {
        userNameTextField.tap()
        userNameTextField.typeText(user)
    }
    
    func typePassword(password: String) {
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    
    func tapLoginButton() {
        loginButton.tap()
    }
    

    
}
