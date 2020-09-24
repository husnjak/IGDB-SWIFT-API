// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IGDB-SWIFT-API",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "IGDB-SWIFT-API",
            targets: ["IGDB-SWIFT-API"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dduan/Just.git",  from: "0.8.0"),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0")
    ],
    targets: [
        .target(
            name: "IGDB-SWIFT-API",
            dependencies: ["Just", "SwiftProtobuf"]),
        .testTarget(
            name: "IGDB-SWIFT-APITests",
            dependencies: ["IGDB-SWIFT-API"]),
    ],
    swiftLanguageVersions: [.v5]
)
