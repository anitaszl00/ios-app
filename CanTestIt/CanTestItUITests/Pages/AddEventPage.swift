//
//  AddEventPage.swift
//  CanTestItUITests
//
//  Created by Anita on 23/05/2024.
//

import Foundation

class AddEventPage: BasePage {
    
    private lazy var eventTitleTextField = app.textFields["eventTtitleTextField"].firstMatch
    private lazy var eventCategoryDropDownField = app.buttons.staticTexts["choose category"].firstMatch
    private lazy var eventCategoryConcert = app.staticTexts["Concert"].firstMatch
    private lazy var startDateField = app.textFields["startDateTextField"].firstMatch
    private lazy var chooseStartDateField = app.staticTexts["22"].firstMatch
    private lazy var doneButton = app.buttons["Done"].firstMatch
    private lazy var endDateTextField = app.textFields["endDateTextField"].firstMatch
    private lazy var chooseEndDateField = app.staticTexts["26"].firstMatch
    private lazy var priceTextField = app.textFields["priceTextField"].firstMatch
    private lazy var premiumEventButton = app.switches["premiumEventSwitch"].firstMatch
    private lazy var saveButton = app.buttons["saveButton"].firstMatch
    
    func typeEventTitle(eventName: String) {
        eventTitleTextField.tap()
        eventTitleTextField.typeText(eventName)
    }
    
    func chooseCategory(){
        eventCategoryDropDownField.tap()
        eventCategoryConcert.tap()
    }
    
    func chooseStartDate(){
        startDateField.tap()
      //  chooseStartDateField.tap()
        doneButton.tap()
    }
    
    func chooseEndDate(){
        endDateTextField.tap()
      //  chooseEndDateField.tap()
        doneButton.tap()
    }
    
    func typePrice(price: String){
        priceTextField.tap()
        priceTextField.typeText(price)
    }
    
    func tapPremiumEventButton(){
        premiumEventButton.tap()
    }
    
    func tapSaveButton() {
        saveButton.tap()
    }
    
}
