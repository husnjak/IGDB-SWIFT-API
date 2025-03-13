// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IGDB-SWIFT-API",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "IGDB-SWIFT-API",
            targets: ["IGDB-SWIFT-API"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.25.1")
    ],
    targets: [
        .target(
            name: "IGDB-SWIFT-API",
            dependencies: ["SwiftProtobuf"]),
        .testTarget(
            name: "IGDB-SWIFT-APITests",
            dependencies: ["IGDB-SWIFT-API"]),
    ],
    swiftLanguageVersions: [.v5]
)
