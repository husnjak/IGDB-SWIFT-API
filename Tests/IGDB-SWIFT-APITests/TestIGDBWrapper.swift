//
//  TestIGDBWrapper.swift
//  IGDB-SWIFT-API_Tests
//
//  Created by Husnjak, Filip on 2020-09-24.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import IGDB_SWIFT_API

class TestIGDBWrapper: XCTestCase {

    private var wrapper = IGDBWrapper(
        clientID: ProcessInfo.processInfo.environment["client_id"]!,
        accessToken: ProcessInfo.processInfo.environment["access_token"]!
    )

    func testComingSoonPS4Games() {
        let date = Int(Date().timeIntervalSince1970)
        let query = APICalypse().fields(fields: "*")
            .where(query: "platforms = 48 & release_dates.date > \(date)")
            .sort(field: "release_dates.date", order: Sort.ASCENDING)
        
        let expectation = self.expectation(description: "API Request")
        wrapper.games(apiCalypse: query, result: { games in
            XCTAssert(!games.isEmpty)
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRecentlyReleasedPS4Games() {
        let date = Int(Date().timeIntervalSince1970)
        let query = APICalypse().fields(fields: "*")
            .where(query: "platforms = 48 & release_dates.date < \(date)")
            .sort(field: "release_dates.date", order: Sort.DESCENDING)

        let expectation = self.expectation(description: "API Request")
        wrapper.games(apiCalypse: query, result: { games in
            XCTAssert(!games.isEmpty)
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSearch() {
        let query = APICalypse()
            .search(searchQuery: "Assassins Creed")
            .fields(fields: "game.name, game.involved_companies")
            .where(query: "game != n & game.version_parent = n")

        let expectation = self.expectation(description: "API Request")
        wrapper.search(apiCalypse: query, result: { search in
            XCTAssert(!search.isEmpty)
            XCTAssertEqual(search.count, 10)
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPS4Exclusives() {
        let query = APICalypse()
            .fields(fields: "name, category, platforms")
            .where(query: "category = 0 & platforms = 48")

        let expectation = self.expectation(description: "API Request")
        wrapper.games(apiCalypse: query, result: { games in
            XCTAssert(!games.isEmpty)
            XCTAssertEqual(games.count, 10)
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testStringFilter() {
        let query = APICalypse()
            .fields(fields: "id, name, category")
            .where(query: "name = \"w\";")
            .limit(value: 50)
        let expectation = self.expectation(description: "API Request")
        wrapper.games(apiCalypse: query, result: { games in
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

}
