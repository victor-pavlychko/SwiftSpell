// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-spell",
    products: [
        .executable(name: "swift-spell", targets: ["swift-spell"]),
        .library(name: "SwiftSpell", targets: ["SwiftSpell"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "0.0.2")),
        .package(url: "https://github.com/apple/swift-log.git", .upToNextMinor(from: "1.2.0")),
        .package(url: "https://github.com/apple/swift-syntax.git", .revision("0.50200.0")),
    ],
    targets: [
        .target(name: "swift-spell", dependencies: ["ArgumentParser", "SwiftSpell"]),
        .target(name: "SwiftSpell", dependencies: ["SwiftSyntax"]),
        .testTarget(name: "SwiftSpellTests", dependencies: ["SwiftSpell"]),
    ]
)
