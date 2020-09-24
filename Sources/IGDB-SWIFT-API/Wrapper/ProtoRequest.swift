//
//  ProtoRequest.swift
//  IGDB-API-SWIFT
//  This file holds function extensions for IGDBWrapper for each public endpoint in the API
//
//  Created by Filip Husnjak on 2019-01-04.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation

public extension IGDBWrapper {
    
    func ageRatings(apiCalypse: APICalypse, result: @escaping ([Proto_AgeRating]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .AGE_RATINGS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AgeRatingResult(serializedData: bytes).ageratings
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func ageRatingContentDescriptions(apiCalypse: APICalypse, result: @escaping ([Proto_AgeRatingContentDescription]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .AGE_RATING_CONTENT_DESCRIPTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AgeRatingContentDescriptionResult(serializedData: bytes).ageratingcontentdescriptions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func alternativeNames(apiCalypse: APICalypse, result: @escaping ([Proto_AlternativeName]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .ALTERNATIVE_NAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AlternativeNameResult(serializedData: bytes).alternativenames
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func artworks(apiCalypse: APICalypse, result: @escaping ([Proto_Artwork]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .ARTWORKS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ArtworkResult(serializedData: bytes).artworks
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func characters(apiCalypse: APICalypse, result: @escaping ([Proto_Character]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .CHARACTERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CharacterResult(serializedData: bytes).characters
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func collections(apiCalypse: APICalypse, result: @escaping ([Proto_Collection]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .COLLECTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CollectionResult(serializedData: bytes).collections
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func characterMugShots(apiCalypse: APICalypse, result: @escaping ([Proto_CharacterMugShot]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .CHARACTER_MUG_SHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CharacterMugShotResult(serializedData: bytes).charactermugshots
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func companies(apiCalypse: APICalypse, result: @escaping ([Proto_Company]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyResult(serializedData: bytes).companies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func companyWebsites(apiCalypse: APICalypse, result: @escaping ([Proto_CompanyWebsite]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .COMPANY_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyWebsiteResult(serializedData: bytes).companywebsites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func companyLogos(apiCalypse: APICalypse, result: @escaping ([Proto_CompanyLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .COMPANY_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyLogoResult(serializedData: bytes).companylogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func covers(apiCalypse: APICalypse, result: @escaping ([Proto_Cover]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .COVERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CoverResult(serializedData: bytes).covers
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func externalGames(apiCalypse: APICalypse, result: @escaping ([Proto_ExternalGame]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .EXTERNAL_GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ExternalGameResult(serializedData: bytes).externalgames
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func franschises(apiCalypse: APICalypse, result: @escaping ([Proto_Franchise]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .FRANCHISES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_FranchiseResult(serializedData: bytes).franchises
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func games(apiCalypse: APICalypse, result: @escaping ([Proto_Game]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameResult(serializedData: bytes).games
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameEngines(apiCalypse: APICalypse, result: @escaping ([Proto_GameEngine]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_ENGINES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameEngineResult(serializedData: bytes).gameengines
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameEngineLogos(apiCalypse: APICalypse, result: @escaping ([Proto_GameEngineLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_ENGINE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameEngineLogoResult(serializedData: bytes).gameenginelogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameModes(apiCalypse: APICalypse, result: @escaping ([Proto_GameMode]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameModeResult(serializedData: bytes).gamemodes
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameVersions(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersion]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionResult(serializedData: bytes).gameversions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameVersionFeatures(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersionFeature]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_VERSION_FEATURES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionFeatureResult(serializedData: bytes).gameversionfeatures
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameVersionFeatureValues(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersionFeatureValue]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_VERSION_FEATURE_VALUES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionFeatureValueResult(serializedData: bytes).gameversionfeaturevalues
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func gameVideos(apiCalypse: APICalypse, result: @escaping ([Proto_GameVideo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GAME_VIDEOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVideoResult(serializedData: bytes).gamevideos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func genres(apiCalypse: APICalypse, result: @escaping ([Proto_Genre]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .GENRES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GenreResult(serializedData: bytes).genres
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func involvedCompanies(apiCalypse: APICalypse, result: @escaping ([Proto_InvolvedCompany]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .INVOLVED_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_InvolvedCompanyResult(serializedData: bytes).involvedcompanies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func keywords(apiCalypse: APICalypse, result: @escaping ([Proto_Keyword]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .KEYWORDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_KeywordResult(serializedData: bytes).keywords
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func multiplayerModes(apiCalypse: APICalypse, result: @escaping ([Proto_MultiplayerMode]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .MULTIPLAYER_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_MultiplayerModeResult(serializedData: bytes).multiplayermodes
            result(objects)
        }, errorResponse: errorResponse)
    }

    func platforms(apiCalypse: APICalypse, result: @escaping ([Proto_Platform]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORMS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformResult(serializedData: bytes).platforms
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformLogos(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformLogoResult(serializedData: bytes).platformlogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformVersions(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersion]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionResult(serializedData: bytes).platformversions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformVersionCompanies(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersionCompany]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_VERSION_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionCompanyResult(serializedData: bytes).platformversioncompanies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformVersionReleaseDates(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersionReleaseDate]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_VERSION_RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionReleaseDateResult(serializedData: bytes).platformversionreleasedates
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformWebsites(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformWebsite]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformWebsiteResult(serializedData: bytes).platformwebsites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func playerPerspectives(apiCalypse: APICalypse, result: @escaping ([Proto_PlayerPerspective]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLAYER_PERSPECTIVES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlayerPerspectiveResult(serializedData: bytes).playerperspectives
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func platformFamilies(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformFamily]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .PLATFORM_FAMILIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformFamilyResult(serializedData: bytes).platformfamilies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func releaseDates(apiCalypse: APICalypse, result: @escaping ([Proto_ReleaseDate]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ReleaseDateResult(serializedData: bytes).releasedates
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func screenshots(apiCalypse: APICalypse, result: @escaping ([Proto_Screenshot]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .SCREENSHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ScreenshotResult(serializedData: bytes).screenshots
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func search(apiCalypse: APICalypse, result: @escaping ([Proto_Search]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .SEARCH, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_SearchResult(serializedData: bytes).searches
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func themes(apiCalypse: APICalypse, result: @escaping ([Proto_Theme]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .THEMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ThemeResult(serializedData: bytes).themes
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    func websites(apiCalypse: APICalypse, result: @escaping ([Proto_Website]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiProtoRequest(endpoint: .WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_WebsiteResult(serializedData: bytes).websites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
}
