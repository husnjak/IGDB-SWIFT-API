//
//  TestApiCalypseQueryParser.swift
//  IGDB-SWIFT-API_Tests
//
//  Created by Husnjak, Filip on 2020-09-24.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import IGDB_SWIFT_API

class TestApiCalypseQueryParser: XCTestCase {

    func testAllfields() {
        let apiCalypse = APICalypse().fields(fields: "*")
        XCTAssertEqual("f *;", apiCalypse.buildQuery())
    }

    
    func testLimit() {
        let apiCalypse = APICalypse().fields(fields:"name").limit(value: 10)
        XCTAssertEqual("f name;l 10;", apiCalypse.buildQuery())
    }

    
    func testOffset() {
        let apiCalypse = APICalypse().fields(fields:"name").offset(value: 10)
        XCTAssertEqual("f name;o 10;", apiCalypse.buildQuery())
    }

    
    func testWhereNoCommaOrWhere() {
        let apiCalypse = APICalypse().fields(fields:"*").where(query: "id = 1942")
        XCTAssertEqual("f *;w id = 1942;", apiCalypse.buildQuery())
    }

    
    func testWhereNoWhere() {
        let apiCalypse = APICalypse().fields(fields:"*").where(query: "id = 1942;")
        XCTAssertEqual("f *;w id = 1942;", apiCalypse.buildQuery())
    }

    
    func testWhere() {
        let apiCalypse = APICalypse().fields(fields:"*").where(query: "where id = 1942;")
        XCTAssertEqual("f *;where id = 1942;", apiCalypse.buildQuery())
    }

    
    func testWhereW() {
        let apiCalypse = APICalypse().fields(fields:"*").where(query: "w id = 1942;")
        XCTAssertEqual("f *;w id = 1942;", apiCalypse.buildQuery())
    }

    
    func testExclude() {
        let apiCalypse = APICalypse().fields(fields:"*").exclude(fields: "name")
        XCTAssertEqual("f *;x name;", apiCalypse.buildQuery())
    }

    
    func testSort() {
        let apiCalypse = APICalypse().fields(fields:"name,popularity").sort(field: "popularity", order: Sort.DESCENDING)
        XCTAssertEqual("f name,popularity;s popularity desc;", apiCalypse.buildQuery())
    }

    
    func testComingSoonGamesForPS4() {
        let apiCalypse = APICalypse().fields(fields:"*")
            .where(query: "platform = 48 & date > 1538129354;")
            .sort(field: "date", order: Sort.ASCENDING)
        XCTAssertEqual("f *;s date asc;w platform = 48 & date > 1538129354;", apiCalypse.buildQuery())
    }

    
    func testRecentlyReleaseGamesPS4() {
        let apiCalypse = APICalypse().fields(fields:"*")
            .where(query: "platform = 48 & date > 1538129354;")
            .sort(field: "date", order: Sort.DESCENDING)
        XCTAssertEqual("f *;s date desc;w platform = 48 & date > 1538129354;", apiCalypse.buildQuery())
    }

    
    func testSearch() {
        let apiCalypse = APICalypse().search(searchQuery: "Halo")
            .where(query: "game != n").fields(fields:"game.name,game.invloved_companies")
        XCTAssertEqual(
            "search \"Halo\";f game.name,game.invloved_companies;w game != n;",
            apiCalypse.buildQuery()
        )
    }

    
    func testSearchWithExclude() {
        let apiCalypse = APICalypse().search(searchQuery: "Assassins Creed")
            .fields(fields:"game.name,game.invloved_companies")
            .where(query: "game != n & game.version_parent = n")
        XCTAssertEqual(
            "search \"Assassins Creed\";f game.name,game.invloved_companies;w game != n & game.version_parent = n;",
            apiCalypse.buildQuery()
        )
    }

    
    func testGetVersions() {
        let apiCalypse = APICalypse()
            .fields(fields:"version_parent.*")
            .where(query: "id = 39047")
        XCTAssertEqual("f version_parent.*;w id = 39047;", apiCalypse.buildQuery())
    }

    
    func testGetAllPS4Exclusives() {
        let apiCalypse = APICalypse()
            .fields(fields:"name,category,platforms")
            .where(query: "category = 0 & platforms = 48")
        XCTAssertEqual("f name,category,platforms;w category = 0 & platforms = 48;", apiCalypse.buildQuery())
    }

    
    func testGetAllPS4ANDPCExclusives() {
        let apiCalypse = APICalypse()
            .fields(fields:"name,category,platforms")
            .where(query: "category = 0 & platforms = {48,6}")
        XCTAssertEqual(
            "f name,category,platforms;w category = 0 & platforms = {48,6};",
            apiCalypse.buildQuery()
        )
    }


}
