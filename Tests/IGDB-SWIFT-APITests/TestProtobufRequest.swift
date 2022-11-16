//
//  TestProtobufRequest.swift
//  IGDB-SWIFT-API_Tests
//
//  Created by Husnjak, Filip on 2020-09-24.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import IGDB_SWIFT_API

class TestProtobufRequest: XCTestCase {
    
    private var wrapper = IGDBWrapper(
        clientID: ProcessInfo.processInfo.environment["client_id"]!,
        accessToken: ProcessInfo.processInfo.environment["access_token"]!
    )
    
    func testAgeRating() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatings(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAgeRatingContentDescriptions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatingContentDescriptions(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAlternativeNames() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.alternativeNames(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testArtwork() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.artworks(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacters() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characters(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollections() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collections(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacterMugShots() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characterMugShots(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companies(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testComapnyWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companyWebsites(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCompantLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companyLogos(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCover() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.covers(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testExternalGames() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.externalGames(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFranschises() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.franschises(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGames() {
        let query = APICalypse()
            .fields(fields: "*,age_ratings.*,alternative_names.*,cover.*, external_games.*,franchises.*, genres.*, screenshots.*, videos.*")
            .where(query: "id = 1942")
        
        let expectation = self.expectation(description: "API Request")
        
        wrapper.games(apiCalypse: query, result: { result in
            
            XCTAssertFalse(result.isEmpty)
            let game = result[0]
            XCTAssertEqual("The Witcher 3: Wild Hunt", game.name)
            XCTAssertEqual("the-witcher-3-wild-hunt", game.slug)
            XCTAssertFalse(game.name.isEmpty)
            XCTAssert(game.updatedAt.isInitialized)
            XCTAssertFalse(game.checksum.isEmpty)
            
            XCTAssertNotEqual(" ", game.checksum)
            
            let ageRatings = game.ageRatings
            let ageRating = ageRatings[0]
            XCTAssertFalse(ageRating.contentDescriptions.isEmpty)
            
            XCTAssertFalse(ageRating.checksum.isEmpty)
            XCTAssertNotEqual(" ", ageRating.checksum)
            
            let alternativeNames = game.alternativeNames
            XCTAssertFalse(alternativeNames.isEmpty)
            XCTAssertFalse(alternativeNames[0].checksum.isEmpty)
            XCTAssertNotEqual(" ", alternativeNames[0].checksum)
            
            let cover = game.cover
            XCTAssertNotEqual(" ", cover.imageID)
            
            XCTAssertFalse(cover.checksum.isEmpty)
            XCTAssertNotEqual(" ", cover.checksum)
            
            let externalGames = game.externalGames
            XCTAssertFalse(externalGames.isEmpty)
            
            XCTAssertFalse(externalGames[0].checksum.isEmpty)
            XCTAssertNotEqual(" ", externalGames[0].checksum)
            
            let franchises = game.franchises
            XCTAssert(franchises[0].id == 452)
            XCTAssertEqual("the-witcher", franchises[0].slug)
            let franchiseGames = franchises[0].games
            XCTAssertFalse(franchiseGames.isEmpty)
            
            let involvedCompany = game.involvedCompanies
            XCTAssertFalse(involvedCompany.isEmpty)
            
            let genres = game.genres
            XCTAssertFalse(genres.isEmpty)
            
            let releaseDates = game.releaseDates
            XCTAssertFalse(releaseDates.isEmpty)
            
            let screenshots = game.screenshots
            XCTAssertFalse(screenshots.isEmpty)
            let screenshot = screenshots[0]
            XCTAssertNotEqual(" ", screenshot.imageID)
            XCTAssertNotEqual(" ", screenshot.checksum)
            
            let videos = game.videos
            XCTAssertFalse(videos.isEmpty)
            let video = videos[0]
            XCTAssertNotEqual(" ", video.checksum)
            XCTAssertNotEqual(" ", video.videoID)
            
            expectation.fulfill()
        }, errorResponse: {error in
            XCTAssert(false)
        })
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testGameEngines() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameEngines(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameEngineLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameEngineLogos(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameModes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameModes(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersions(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersionFeatures() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersionFeatures(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersionFeatureValues() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersionFeatureValues(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVideos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVideos(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGenres() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.genres(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testInvolvedCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.involvedCompanies(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testKeywords() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.keywords(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMultiplayerModes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.multiplayerModes(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPlatforms() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platforms(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPlatformLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformLogos(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVersions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersions(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVerisonCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersionCompanies(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVersionReleaseDates() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersionReleaseDates(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformWebsites(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlayerPerspectives() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.playerPerspectives(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformFamilies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformFamilies(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testReleaseDates() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.releaseDates(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testScreenshots() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.screenshots(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testSearch() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.search(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testThemes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.themes(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.websites(apiCalypse: APICalypse(), result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguages() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languages(apiCalypse: APICalypse()) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguageSupports() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languageSupports(apiCalypse: APICalypse()) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguageSupportTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languageSupportTypes(apiCalypse: APICalypse()) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameLocalizations() {
        let expectation = self.expectation(description: "API Request")

        wrapper.gameLocalizations(apiCalypse: APICalypse()) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRegions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.regions(apiCalypse: APICalypse()) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
