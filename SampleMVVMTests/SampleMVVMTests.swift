//
//  SampleMVVMTests.swift
//  SampleMVVMTests
//
//  Created by Chander Narsingoju on 23/08/18.
//  Copyright © 2018 Chander Narsingoju. All rights reserved.
//

import XCTest
@testable import SampleMVVM

class SampleMVVMTests: XCTestCase {
    
    var vcObj: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vcObj = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDogModel() {
        
        //Getting the Dog model and asserting its result.
        
       let model = vcObj.getDogViewModel(name: "Jimmy")
        XCTAssert(model.dogName == "Jimmy")
        XCTAssert(model.dogLegs == "4", "Jimmy has 4 legs")
        XCTAssert(model.dogNameAndLegs == "The Dog Jimmy has 4 legs")
    }
}
