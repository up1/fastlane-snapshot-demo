//
//  xxxUITests.swift
//  xxxUITests
//
//  Created by somkiat puisungnoen on 3/6/2560 BE.
//  Copyright © 2560 ___UP1___. All rights reserved.
//

import XCTest
import SimulatorStatusMagic

class xxxUITests: XCTestCase {
    
    func testExample() {
        snapshot("step01")
        
        let clickButtonButton = XCUIApplication().buttons["click_button"]
        clickButtonButton.tap()
        snapshot("step02")
        clickButtonButton.tap()
        snapshot("step03")
        clickButtonButton.tap()
        clickButtonButton.tap()
        clickButtonButton.tap()
        
        XCTAssertEqual("Button", clickButtonButton.label)
        snapshot("step04")
        
    }
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        SDStatusBarManager.sharedInstance().carrierName = "Somkiat"
        SDStatusBarManager.sharedInstance().timeString = "15:00"
        SDStatusBarManager.sharedInstance().batteryDetailEnabled = false
        SDStatusBarManager.sharedInstance().enableOverrides()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        SDStatusBarManager.sharedInstance().disableOverrides()
    }
    
    
    
}
