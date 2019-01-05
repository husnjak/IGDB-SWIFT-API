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
    public func achievements(apiCalypse: APICalypse, result: @escaping ([Proto_Achievement]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .ACHIEVEMENTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AchievementResult(serializedData: bytes).achievements
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func achievementIcons(apiCalypse: APICalypse, result: @escaping ([Proto_AchievementIcon]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .ACHIEVEMENT_ICONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AchievementIconResult(serializedData: bytes).achievementicons
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func ageRatings(apiCalypse: APICalypse, result: @escaping ([Proto_AgeRating]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .AGE_RATINGS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AgeRatingResult(serializedData: bytes).ageratings
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func ageRatingContentDescriptions(apiCalypse: APICalypse, result: @escaping ([Proto_AgeRatingContentDescription]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .AGE_RATING_CONTENT_DESCRIPTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AgeRatingContentDescriptionResult(serializedData: bytes).ageratingcontentdescriptions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func alternativeNames(apiCalypse: APICalypse, result: @escaping ([Proto_AlternativeName]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .ALTERNATIVE_NAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_AlternativeNameResult(serializedData: bytes).alternativenames
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func artworks(apiCalypse: APICalypse, result: @escaping ([Proto_Artwork]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .ARTWORKS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ArtworkResult(serializedData: bytes).artworks
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func characters(apiCalypse: APICalypse, result: @escaping ([Proto_Character]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .CHARACTERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CharacterResult(serializedData: bytes).characters
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func collections(apiCalypse: APICalypse, result: @escaping ([Proto_Collection]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .COLLECTIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CollectionResult(serializedData: bytes).collections
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func characterMugShots(apiCalypse: APICalypse, result: @escaping ([Proto_CharacterMugShot]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .CHARACTER_MUG_SHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CharacterMugShotResult(serializedData: bytes).charactermugshots
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func companies(apiCalypse: APICalypse, result: @escaping ([Proto_Company]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyResult(serializedData: bytes).companies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func companyWebsites(apiCalypse: APICalypse, result: @escaping ([Proto_CompanyWebsite]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .COMPANY_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyWebsiteResult(serializedData: bytes).companywebsites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func companyLogos(apiCalypse: APICalypse, result: @escaping ([Proto_CompanyLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .COMPANY_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CompanyLogoResult(serializedData: bytes).companylogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func covers(apiCalypse: APICalypse, result: @escaping ([Proto_Cover]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .COVERS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_CoverResult(serializedData: bytes).covers
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func externalGames(apiCalypse: APICalypse, result: @escaping ([Proto_ExternalGame]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .EXTERNAL_GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ExternalGameResult(serializedData: bytes).externalgames
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func feeds(apiCalypse: APICalypse, result: @escaping ([Proto_Feed]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .FEEDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_FeedResult(serializedData: bytes).feeds
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func franschises(apiCalypse: APICalypse, result: @escaping ([Proto_Franchise]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .FRANCHISES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_FranchiseResult(serializedData: bytes).franchises
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func games(apiCalypse: APICalypse, result: @escaping ([Proto_Game]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameResult(serializedData: bytes).games
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameEngines(apiCalypse: APICalypse, result: @escaping ([Proto_GameEngine]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_ENGINES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameEngineResult(serializedData: bytes).gameengines
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameEngineLogos(apiCalypse: APICalypse, result: @escaping ([Proto_GameEngineLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_ENGINE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameEngineLogoResult(serializedData: bytes).gameenginelogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameModes(apiCalypse: APICalypse, result: @escaping ([Proto_GameMode]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameModeResult(serializedData: bytes).gamemodes
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameVersions(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersion]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionResult(serializedData: bytes).gameversions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameVersionFeatures(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersionFeature]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_VERSION_FEATURES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionFeatureResult(serializedData: bytes).gameversionfeatures
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameVersionFeatureValues(apiCalypse: APICalypse, result: @escaping ([Proto_GameVersionFeatureValue]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_VERSION_FEATURE_VALUES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVersionFeatureValueResult(serializedData: bytes).gameversionfeaturevalues
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func gameVideos(apiCalypse: APICalypse, result: @escaping ([Proto_GameVideo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GAME_VIDEOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GameVideoResult(serializedData: bytes).gamevideos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func genres(apiCalypse: APICalypse, result: @escaping ([Proto_Genre]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .GENRES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_GenreResult(serializedData: bytes).genres
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func involvedCompanies(apiCalypse: APICalypse, result: @escaping ([Proto_InvolvedCompany]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .INVOLVED_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_InvolvedCompanyResult(serializedData: bytes).involvedcompanies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func keywords(apiCalypse: APICalypse, result: @escaping ([Proto_Keyword]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .KEYWORDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_KeywordResult(serializedData: bytes).keywords
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func multiplayerModes(apiCalypse: APICalypse, result: @escaping ([Proto_MultiplayerMode]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .MULTIPLAYER_MODES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_MultiplayerModeResult(serializedData: bytes).multiplayermodes
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pages(apiCalypse: APICalypse, result: @escaping ([Proto_Page]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PAGES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PageResult(serializedData: bytes).pages
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pageBackgrounds(apiCalypse: APICalypse, result: @escaping ([Proto_PageBackground]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PAGE_BACKGROUNDS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PageBackgroundResult(serializedData: bytes).pagebackgrounds
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pageLogos(apiCalypse: APICalypse, result: @escaping ([Proto_PageLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PAGE_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PageLogoResult(serializedData: bytes).pagelogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pageWebsites(apiCalypse: APICalypse, result: @escaping ([Proto_PageWebsite]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PAGE_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PageWebsiteResult(serializedData: bytes).pagewebsites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platforms(apiCalypse: APICalypse, result: @escaping ([Proto_Platform]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORMS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformResult(serializedData: bytes).platforms
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platformLogos(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformLogo]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORM_LOGOS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformLogoResult(serializedData: bytes).platformlogos
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platformVersions(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersion]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORM_VERSIONS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionResult(serializedData: bytes).platformversions
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platformVersionCompanies(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersionCompany]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORM_VERSION_COMPANIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionCompanyResult(serializedData: bytes).platformversioncompanies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platformVersionReleaseDates(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformVersionReleaseDate]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORM_VERSION_RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformVersionReleaseDateResult(serializedData: bytes).platformversionreleasedates
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func platformWebsites(apiCalypse: APICalypse, result: @escaping ([Proto_PlatformWebsite]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLATFORM_WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlatformWebsiteResult(serializedData: bytes).platformwebsites
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func playerPerspectives(apiCalypse: APICalypse, result: @escaping ([Proto_PlayerPerspective]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PLAYER_PERSPECTIVES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PlayerPerspectiveResult(serializedData: bytes).playerperspectives
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func productFamilies(apiCalypse: APICalypse, result: @escaping ([Proto_ProductFamily]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PRODUCT_FAMILIES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ProductFamilyResult(serializedData: bytes).productfamilies
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pulses(apiCalypse: APICalypse, result: @escaping ([Proto_Pulse]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PULSES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PulseResult(serializedData: bytes).pulses
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pulseGroups(apiCalypse: APICalypse, result: @escaping ([Proto_PulseGroup]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PULSE_GROUPS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PulseGroupResult(serializedData: bytes).pulsegroups
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pulseSources(apiCalypse: APICalypse, result: @escaping ([Proto_PulseSource]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PULSE_SOURCES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PulseSourceResult(serializedData: bytes).pulsesources
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func pulseUrls(apiCalypse: APICalypse, result: @escaping ([Proto_PulseUrl]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .PULSE_URLS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_PulseUrlResult(serializedData: bytes).pulseurls
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func releaseDates(apiCalypse: APICalypse, result: @escaping ([Proto_ReleaseDate]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .RELEASE_DATES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ReleaseDateResult(serializedData: bytes).releasedates
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func screenshots(apiCalypse: APICalypse, result: @escaping ([Proto_Screenshot]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .SCREENSHOTS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ScreenshotResult(serializedData: bytes).screenshots
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func search(apiCalypse: APICalypse, result: @escaping ([Proto_Search]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .SEARCH, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_SearchResult(serializedData: bytes).searches
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func themes(apiCalypse: APICalypse, result: @escaping ([Proto_Theme]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .THEMES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_ThemeResult(serializedData: bytes).themes
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func timeToBeats(apiCalypse: APICalypse, result: @escaping ([Proto_TimeToBeat]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .TIME_TO_BEATS, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_TimeToBeatResult(serializedData: bytes).timetobeats
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func titles(apiCalypse: APICalypse, result: @escaping ([Proto_Title]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .TITLES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_TitleResult(serializedData: bytes).titles
            result(objects)
        }, errorResponse: errorResponse)
    }
    
    public func websites(apiCalypse: APICalypse, result: @escaping ([Proto_Website]) -> (Void), errorResponse: @escaping (RequestException) -> (Void)) {
        apiRequest(endpoint: .WEBSITES, apicalypseQuery: apiCalypse.buildQuery(), dataResponse: { bytes -> (Void) in
            let objects = try! Proto_WebsiteResult(serializedData: bytes).websites
            result(objects)
        }, errorResponse: errorResponse)
    }
}
