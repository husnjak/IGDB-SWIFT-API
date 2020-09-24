//
//  TestImageBuilder.swift
//  IGDB-SWIFT-API_Tests
//
//  Created by Husnjak, Filip on 2020-09-24.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import IGDB_SWIFT_API

class TestImageBuilder: XCTestCase {

    private var wrapper = IGDBWrapper(
        clientID: ProcessInfo.processInfo.environment["client_id"]!,
        accessToken: ProcessInfo.processInfo.environment["access_token"]!
    )
    
    func testJPEGImg() {
        let query = APICalypse()
            .fields(fields: "image_id")
            .where(query: "image_id != n")
        
        let expectation = self.expectation(description: "API Request")
        wrapper.covers(apiCalypse: query, result: { covers in
            XCTAssert(!covers.isEmpty)
            let firstCover = covers[0]
            let coverURL = imageBuilder(imageID: firstCover.imageID, size: ImageSize.HD, imageType: ImageType.JPEG)
            XCTAssert(!coverURL.isEmpty)
            let url = URL(fileURLWithPath: coverURL)
            XCTAssert(url.absoluteString.hasSuffix(ImageType.JPEG.rawValue))
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPNGImg() {
        let query = APICalypse()
            .fields(fields: "image_id")
            .where(query: "image_id != n")
        
        let expectation = self.expectation(description: "API Request")
        wrapper.covers(apiCalypse: query, result: { covers in
            XCTAssert(!covers.isEmpty)
            let firstCover = covers[0]
            let coverURL = imageBuilder(imageID: firstCover.imageID, size: ImageSize.THUMB, imageType: ImageType.PNG)
            XCTAssert(!coverURL.isEmpty)
            let url = URL(fileURLWithPath: coverURL)
            XCTAssert(url.absoluteString.hasSuffix(ImageType.PNG.rawValue))
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGIFImg() {
        let query = APICalypse()
            .fields(fields: "image_id")
            .where(query: "image_id != n")
        
        let expectation = self.expectation(description: "API Request")
        wrapper.covers(apiCalypse: query, result: { covers in
            XCTAssert(!covers.isEmpty)
            let firstCover = covers[0]
            let coverURL = imageBuilder(imageID: firstCover.imageID, size: ImageSize.LOGO_MEDIUM, imageType: ImageType.GIF)
            XCTAssert(!coverURL.isEmpty)
            let url = URL(fileURLWithPath: coverURL)
            XCTAssert(url.absoluteString.hasSuffix(ImageType.GIF.rawValue))
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWEBPImg() {
        let query = APICalypse()
            .fields(fields: "image_id")
            .where(query: "image_id != n")
        
        let expectation = self.expectation(description: "API Request")
        wrapper.covers(apiCalypse: query, result: { covers in
            XCTAssert(!covers.isEmpty)
            let firstCover = covers[0]
            let coverURL = imageBuilder(imageID: firstCover.imageID, size: ImageSize.SCREENSHOT_HUGE, imageType: ImageType.WEBP)
            XCTAssert(!coverURL.isEmpty)
            let url = URL(fileURLWithPath: coverURL)
            XCTAssert(url.absoluteString.hasSuffix(ImageType.WEBP.rawValue))
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }

}
