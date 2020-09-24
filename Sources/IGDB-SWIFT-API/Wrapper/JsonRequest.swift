//
//  JsonRequest.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-05.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation

public extension IGDBWrapper {
    
    func jsonAgeRatings(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .AGE_RATINGS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonAgeRatingContentDescriptions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .AGE_RATING_CONTENT_DESCRIPTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonAlternativeNames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ALTERNATIVE_NAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonArtworks(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ARTWORKS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCharacters(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .CHARACTERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCollections(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COLLECTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCharacterMugShots(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .CHARACTER_MUG_SHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCompanyWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANY_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCompanyLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANY_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonCovers(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COVERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonExternalGames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .EXTERNAL_GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonFranschises(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .FRANCHISES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameEngines(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_ENGINES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameEngineLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_ENGINE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameModes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameVersions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameVersionFeatures(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSION_FEATURES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameVersionFeatureValues(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSION_FEATURE_VALUES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGameVideos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VIDEOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonGenres(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GENRES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonInvolvedCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .INVOLVED_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonKeywords(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .KEYWORDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonMultiplayerModes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .MULTIPLAYER_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatforms(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORMS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformVersions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformVersionCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSION_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformVersionReleaseDates(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSION_RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlayerPerspectives(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLAYER_PERSPECTIVES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonPlatformFamilies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_FAMILIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonReleaseDates(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonScreenshots(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .SCREENSHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonSearch(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .SEARCH, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonThemes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .THEMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    func jsonWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }

}
