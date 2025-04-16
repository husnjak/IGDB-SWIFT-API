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
    
    private let apicalypseQuery = APICalypse().fields(fields: "*");
    
    func testAgeRating() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatings(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAgeRatingCategories() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatingCategories(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAgeRatingContentDescriptions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatingContentDescriptions(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAgeRatingContentDescriptionsV2() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatingContentDescriptionsV2(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAgeRatingOrganizations() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.ageRatingOrganizations(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testAlternativeNames() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.alternativeNames(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testArtwork() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.artworks(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacters() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characters(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacterGenders() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characterGenders(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacterSpecies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characterSpecies(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollections() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collections(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCharacterMugShots() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.characterMugShots(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companies(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCompanyStatuses() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companyStatuses(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testComapnyWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companyWebsites(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCompantLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.companyLogos(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCover() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.covers(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDateFormats() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.dateFormats(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testExternalGames() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.externalGames(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testExternalGameSources() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.externalGameSources(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFranschises() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.franschises(apiCalypse: apicalypseQuery, result: { result in
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
            XCTAssert(ageRating.hasOrganization)
            XCTAssert(ageRating.hasRatingCategory)
            XCTAssertFalse(ageRating.ratingContentDescriptions.isEmpty)
            
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
        
        wrapper.gameEngines(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameEngineLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameEngineLogos(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameModes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameModes(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameTimeToBeats() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameTimeToBeats(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameReleaseFormats() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameReleaseFormats(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameStatuses() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameStatuses(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameTypes(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersions(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersionFeatures() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersionFeatures(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVersionFeatureValues() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVersionFeatureValues(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameVideos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.gameVideos(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGenres() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.genres(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testInvolvedCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.involvedCompanies(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testKeywords() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.keywords(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMultiplayerModes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.multiplayerModes(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPlatforms() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platforms(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPlatformTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformTypes(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPlatformLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformLogos(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVersions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersions(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVerisonCompanies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersionCompanies(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformVersionReleaseDates() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformVersionReleaseDates(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformWebsites(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlayerPerspectives() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.playerPerspectives(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testPlatformFamilies() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.platformFamilies(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testReleaseDates() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.releaseDates(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testReleaseDateRegions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.releaseDateRegion(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testScreenshots() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.screenshots(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testSearch() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.search(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testThemes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.themes(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    func testWebsites() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.websites(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWebsiteTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.websites(apiCalypse: apicalypseQuery, result: { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        }) { error in
            XCTAssert(false)
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguages() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languages(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguageSupports() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languageSupports(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testLanguageSupportTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.languageSupportTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testGameLocalizations() {
        let expectation = self.expectation(description: "API Request")

        wrapper.gameLocalizations(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRegions() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.regions(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testEvents() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.events(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testEventLogos() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.eventLogos(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testEventNetworks() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.eventNetworks(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testNetworkTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.networkTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollectionRelationTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collectionRelationTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollectionTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collectionTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollectionMemberships() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collectionMemberships(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testCollectionMembershipTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.collectionMembershipTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPopularityTypes() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.popularityTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPopularityPrimitives() {
        let expectation = self.expectation(description: "API Request")
        
        wrapper.popularityTypes(apiCalypse: apicalypseQuery) { result in
            XCTAssertFalse(result.isEmpty)
            
            expectation.fulfill()
        } errorResponse: { error in
            XCTAssert(false)
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
}
