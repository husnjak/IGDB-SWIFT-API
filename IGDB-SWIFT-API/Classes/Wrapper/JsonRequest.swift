//
//  JsonRequest.swift
//  IGDB-API-SWIFT
//
//  Created by Filip Husnjak on 2019-01-05.
//  Copyright © 2019 Filip Husnjak. All rights reserved.
//

import Foundation

public extension IGDBWrapper {
    public func jsonAchievements(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ACHIEVEMENTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonAchievementIcons(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ACHIEVEMENT_ICONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonAgeRatings(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .AGE_RATINGS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonAgeRatingContentDescriptions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .AGE_RATING_CONTENT_DESCRIPTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonAlternativeNames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ALTERNATIVE_NAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonArtworks(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .ARTWORKS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCharacters(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .CHARACTERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCollections(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COLLECTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCharacterMugShots(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .CHARACTER_MUG_SHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCompanyWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANY_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCompanyLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COMPANY_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonCovers(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .COVERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonExternalGames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .EXTERNAL_GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonFeeds(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .FEEDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonFranschises(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .FRANCHISES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGames(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameEngines(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_ENGINES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameEngineLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_ENGINE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameModes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameVersions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameVersionFeatures(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSION_FEATURES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameVersionFeatureValues(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VERSION_FEATURE_VALUES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGameVideos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GAME_VIDEOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonGenres(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .GENRES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonInvolvedCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .INVOLVED_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonKeywords(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .KEYWORDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonMultiplayerModes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .MULTIPLAYER_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPages(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PAGES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPageBackgrounds(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PAGE_BACKGROUNDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPageLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PAGE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPageWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PAGE_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatforms(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORMS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatformLogos(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatformVersions(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatformVersionCompanies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSION_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatformVersionReleaseDates(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_VERSION_RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlatformWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLATFORM_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPlayerPerspectives(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PLAYER_PERSPECTIVES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonProductFamilies(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PRODUCT_FAMILIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPulses(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PULSES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPulseGroups(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PULSE_GROUPS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPulseSources(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PULSE_SOURCES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonPulseUrls(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .PULSE_URLS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonReleaseDates(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonScreenshots(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .SCREENSHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonSearch(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .SEARCH, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonThemes(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .THEMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonTimeToBeats(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .TIME_TO_BEATS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonTitles(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .TITLES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }
    
    public func jsonWebsites(apiCalypse: APICalypse, result: @escaping (String) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiJsonRequest(endpoint: .WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: result, errorResponse: errorResponse)
    }

}
