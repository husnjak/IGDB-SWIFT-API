//
//  TestCount.swift
//  IGDB-SWIFT-APITests
//
//  Created by Husnjak, Filip on 2020-12-04.
//

import XCTest
import IGDB_SWIFT_API

class TestCount: XCTestCase {

    private var wrapper = IGDBWrapper(
        clientID: ProcessInfo.processInfo.environment["client_id"]!,
        accessToken: ProcessInfo.processInfo.environment["access_token"]!
    )
    
    func testProtoCount() {
        let expectation = self.expectation(description: "API Games Count request")
        
        wrapper.apiProtoCountRequest(endpoint: .GAMES, apicalypseQuery: "", dataResponse: { bytes -> (Void) in
            let count = try! Proto_Count(serializedBytes: bytes).count
            XCTAssert(count > 0)
            
            expectation.fulfill()
        }) { (RequestException) -> (Void) in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testJsonCount() {
        let expectation = self.expectation(description: "API Games Count JSON request")
        
        wrapper.apiJsonCountRequest(endpoint: .GAMES, apicalypseQuery: "", dataResponse: { count -> (Void) in
            XCTAssert(!count.isEmpty)
            expectation.fulfill()
        }) { (RequestException) -> (Void) in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

}
