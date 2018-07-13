//
//  testTests.swift
//  testTests
//
//  Created by Noah Russell on 09/07/2018.
//  Copyright © 2018 Noah Russell. All rights reserved.
//

import XCTest
@testable import test

class testTests: XCTestCase {
    
    //MARK: Film Class Tests
    //Confirm that the Film initializer return a Film object when passed valid parameters.
    func testFilmInitializationSucceeds(){
        //Zero rating
        let zeroRatingFilm=Film.init(name:"Zero",photo:nil,director:"",genre:"",rating:5)
        //Highest positive rating
        let positiveRatingFilm = Film.init(name:"Positive",photo:nil,director:"",genre:"",rating:5)
    }
    //Confirm that the Film initializer returns nil when passed a negative rating or empty name
    func testFilmInitializationFails(){
        //Negative rating
        let negativeRatingFilm = Film.init(name:"Negative",photo:nil,director:"",genre:"",rating:-1)
        XCTAssertNil(negativeRatingFilm)
        //Empty String
        let emptyStringFilm=Film.init(name:"",photo:nil,director:"",genre:"",rating:0)
        XCTAssertNil(emptyStringFilm)
        //Rating exceeds maximum
        let largeRatingFilm=Film.init(name:"Large",photo:nil,director:"",genre:"",rating:6)
        XCTAssertNil(largeRatingFilm)
    }
    
}
