//
//  ImageBuilder.swift
//  IGDB-SWIFT-API
//
//  Created by Filip Husnjak on 2019-02-03.
//

import Foundation

private let imageURL = "https://images.igdb.com/igdb/image/upload/"

public func imageBuilder(imageID: String, size: ImageSize, imageType: ImageType = .PNG) -> String {
    return "\(imageURL)\(size.rawValue)/\(imageID).\(imageType.rawValue)"
}

// These are all of the available image size options
public enum ImageSize: String {
    case MICRO = "t_micro"                      // 35 x 35      Thumb, Center gravity
    case THUMB = "t_thumb"                      // 90 x 90      Thumb, Center gravity
    case COVER_SMALL = "t_cover_small"          // 90 x 128     Fit
    case COVER_BIG = "t_cover_big"              // 264 x 374    Fit
    case LOGO_MEDIUM = "t_logo_med"             // 284 x 160    Fit
    case SCREENSHOT_MEDIUM = "t_screenshot_med" // 569 x 320    Lfill, Center gravity
    case SCREENSHOT_BIG = "t_screenshot_big"    // 889 x 500    Lfill, Center gravity
    case SCREENSHOT_HUGE = "t_screenshot_huge"  // 1280 x 720   Lfill, Center gravity
    case HD = "t_720p"                          // 1280 x 720   Fit, Center gravity
    case FHD = "t_1080p"                        // 1920 x 1080  Fit, Center gravity
}

// These are all of the available image types
public enum ImageType: String {
    case JPEG = "jpg"
    case PNG = "png"
    case GIF = "gif"
    case WEBP = "webp"
}
